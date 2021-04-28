using MigraDoc.DocumentObjectModel.IO;
using MigraDoc.Rendering;
using PdfSharp.Drawing;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Tbm.ScrollableDocumentPreview
{
    public partial class ScrollableDocumentPreview : UserControl
    {
        private const float MaxZoomScale = 5;
        private const float MinZoomScale = 0.1f;
        private const float ZoomStep = 0.1f;

        private float scale = 0.25f;
        private Size displaySize = new Size();

        private DocumentRenderer renderer;
        private XSize documentBoundingBox;
        private List<double> pageOffsets = new List<double>();
        private int page = 1;

        public event EventHandler<float> ZoomChanged;

        public event EventHandler<int> PageChanged;

        public string Ddl
        {
            set
            {
                if (value == null)
                {
                    renderer = null;
                    return;
                }
                renderer = new DocumentRenderer(DdlReader.DocumentFromString(value));
                renderer.PrepareDocument();
                var document = renderer.FormattedDocument;
                pageOffsets = new List<double>(document.PageCount);
                var pageOffset = 0.0;
                var maxWidth = 0.0;
                for (var pageNo = 1; pageNo <= document.PageCount; ++pageNo)
                {
                    var pageSize = document.GetPageInfo(pageNo).GetPageSize();
                    maxWidth = Math.Max(maxWidth, pageSize.Width);
                    pageOffsets.Add(pageOffset);
                    pageOffset += pageSize.Height;
                }
                documentBoundingBox = new XSize(maxWidth, pageOffset);
                page = 1;
                vScrollBar.Value = 0;
                hScrollBar.Value = 0;
                UpdateScrollBarsRange(GetDpi());
                ZoomChanged?.Invoke(this, scale);
                PageChanged?.Invoke(this, page);
                Invalidate();
            }
        }

        public float Zoom
        {
            get => scale;
            set
            {
                value = ClampScale(value);
                if (value != scale)
                {
                    var x = hScrollBar.Value * value / scale;
                    var y = vScrollBar.Value * value / scale;
                    scale = value;
                    UpdateScrollBarsRange(GetDpi());
                    ScrollViewToPosition((int)Math.Round(x), (int)Math.Round(y));
                    Invalidate();
                    ZoomChanged?.Invoke(this, scale);
                }
            }
        }

        public int Page
        {
            get => page;
            set
            {
                if (renderer == null)
                {
                    return;
                }

                if (value <= 0 || value > pageOffsets.Count)
                {
                    return;
                }

                var offset = UnitConverter.PointToPixel(pageOffsets[value - 1], GetDpi().Y);
                ScrollViewToPosition(hScrollBar.Value, (int)Math.Ceiling(offset));
            }
        }

        public ScrollableDocumentPreview()
        {
            InitializeComponent();
            DoubleBuffered = true;
            SetStyle(ControlStyles.ResizeRedraw, true);
            vScrollBar.BackColor = BackColor;
        }

        public void ZoomIn()
        {
            Zoom += ZoomStep;
        }

        public void ZoomOut()
        {
            Zoom -= ZoomStep;
        }

        public void FitZoomToPageWidth()
        {
            if (renderer == null)
            {
                return;
            }

            var (dpiX, dpiY) = GetDpi();
            var pageSizePx = renderer.FormattedDocument.GetPageInfo(page).GetPageSize().ToPixels(dpiX, dpiY);
            var scale = ClientRectangle.Width / pageSizePx.Width;
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(dpiX * scale, dpiY * scale));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we change the scale again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            Zoom = (float)(displaySize.Width / pageSizePx.Width);
        }

        public void FitZoomToPageHeight()
        {
            if (renderer == null)
            {
                return;
            }

            var (dpiX, dpiY) = GetDpi();
            var pageSizePx = renderer.FormattedDocument.GetPageInfo(page).GetPageSize().ToPixels(dpiX, dpiY);
            var scale = ClientRectangle.Height / pageSizePx.Height;
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(dpiX * scale, dpiY * scale));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we change the scale again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            Zoom = (float)(displaySize.Height / pageSizePx.Height);
        }

        public void FitZoomToPage()
        {
            if (renderer == null)
            {
                return;
            }

            var (dpiX, dpiY) = GetDpi();
            var clientSize = ClientRectangle.Size;
            var pageSizePx = renderer.FormattedDocument.GetPageInfo(page).GetPageSize().ToPixels(dpiX, dpiY);
            var scale = Math.Min(clientSize.Width / pageSizePx.Width, clientSize.Height / pageSizePx.Height);
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(dpiX * scale, dpiY * scale));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we change the scale again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            Zoom = (float)Math.Min(displaySize.Width / pageSizePx.Width, displaySize.Height / pageSizePx.Height);
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            if (renderer == null)
            {
                return;
            }

            var dpiX = e.Graphics.DpiX;
            var dpiY = e.Graphics.DpiY;
            var verticalOffsetInPt = UnitConverter.PixelToPoint(vScrollBar.Value, dpiY * scale);
            var pageNo = FindPageFromOffset(verticalOffsetInPt);

            // handle special case when the entrire document fits screen horizontally or vertically
            double verticalOffsetInPx;
            if (!vScrollBar.Visible) // center document vertically
            {
                verticalOffsetInPx =
                    displaySize.Height / 2 - GetDocumentBoundingBoxInPixels(dpiX, dpiY).Height / 2;
            }
            else
            {
                verticalOffsetInPx =
                    UnitConverter.PointToPixel(pageOffsets[pageNo] - verticalOffsetInPt, dpiY * scale);
            }

            float horizontalOffsetInPx;
            if (!hScrollBar.Visible) // center document horizontally
            {
                horizontalOffsetInPx =
                    displaySize.Width / 2 - GetDocumentBoundingBoxInPixels(dpiX, dpiY).Width / 2;
            }
            else
            {
                horizontalOffsetInPx = -hScrollBar.Value;
            }

            var doc = renderer.FormattedDocument;
            SetPage(++pageNo); // pages start at index 1, which is weird
            e.Graphics.SmoothingMode = SmoothingMode.HighQuality;
            e.Graphics.SetClip(new Rectangle(new Point(0, 0), displaySize), CombineMode.Replace);
            while (verticalOffsetInPx < displaySize.Height && pageNo <= doc.PageCount)
            {
                var pageSize = doc.GetPageInfo(pageNo).GetPageSize();
                var pageSizePx = pageSize.ToPixels(dpiX * scale, dpiY * scale);
                var scaleX = pageSizePx.Width / pageSize.Width;
                var scaleY = pageSizePx.Height / (float)pageSize.Height;
                e.Graphics.TranslateTransform(horizontalOffsetInPx, (float)verticalOffsetInPx);
                e.Graphics.FillRectangle(Brushes.White, 0, 0, pageSizePx.Width, pageSizePx.Height);
                e.Graphics.DrawRectangle(Pens.LightGray, 0, 0, pageSizePx.Width, pageSizePx.Height);
                e.Graphics.ScaleTransform((float)scaleX, (float)scaleY);
                // UGLY HACK:
                // For some reason XGraphics always assumes ownership of the Graphics object.
                // We cannot let XGraphics dispose our Graphics.
                XGraphics gfx = null;
                try
                {
                    gfx = XGraphics.FromGraphics(e.Graphics, pageSize);
                    renderer.RenderPage(gfx, pageNo);
                }
                finally
                {
                    gfx?.SetInternalGraphicsToNull();
                    gfx?.Dispose();
                }
                e.Graphics.ResetTransform();
                verticalOffsetInPx += pageSizePx.Height;
                ++pageNo;
            }
        }

        protected override void OnMouseWheel(MouseEventArgs e)
        {
            if (ModifierKeys.HasFlag(Keys.Control))
            {
                if (e.Delta >= 0)
                {
                    ZoomToPoint(e.Location, scale + ZoomStep);
                }
                else
                {
                    ZoomToPoint(e.Location, scale - ZoomStep);
                }
            }
            else
            {
                ScrollViewByOffset(0, -e.Delta);
            }
            base.OnMouseWheel(e);
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            switch (keyData & Keys.KeyCode)
            {
                case Keys.PageDown:
                case Keys.Space:
                    ScrollViewByOffset(0, displaySize.Height);
                    return true;

                case Keys.PageUp:
                    ScrollViewByOffset(0, -displaySize.Height);
                    return true;

                case Keys.Down:
                    ScrollViewByOffset(0, vScrollBar.LargeChange);
                    return true;

                case Keys.Up:
                    ScrollViewByOffset(0, -vScrollBar.LargeChange);
                    return true;

                case Keys.Left:
                    ScrollViewByOffset(-hScrollBar.LargeChange, 0);
                    return true;

                case Keys.Right:
                    ScrollViewByOffset(hScrollBar.LargeChange, 0);
                    return true;
            }

            if (keyData.HasFlag(Keys.Control))
            {
                switch (keyData & Keys.KeyCode)
                {
                    case Keys.OemMinus:
                        ZoomOut();
                        return true;

                    case Keys.Oemplus:
                        ZoomIn();
                        return true;
                }
            }

            return base.ProcessCmdKey(ref msg, keyData);
        }

        protected override void OnResize(EventArgs e)
        {
            base.OnResize(e);
            UpdateScrollBarsRange(GetDpi());
        }

        private void SetPage(int page)
        {
            if (this.page != page)
            {
                this.page = page;
                PageChanged?.Invoke(this, page);
            }
        }

        private void ScrollViewToPosition(int x, int y)
        {
            if (renderer == null)
            {
                return;
            }

            var scrollBarValueChanged = false;
            void scroll(ScrollBar scrollBar, int value)
            {
                value = Math.Min(value, scrollBar.Maximum - scrollBar.LargeChange + 1);
                value = Math.Max(value, scrollBar.Minimum);
                if (value != scrollBar.Value)
                {
                    scrollBar.Value = value;
                    scrollBarValueChanged |= true;
                }
            }
            scroll(hScrollBar, x);
            scroll(vScrollBar, y);
            if (scrollBarValueChanged)
            {
                Invalidate();
            }
        }

        private void ScrollViewByOffset(int dx, int dy) =>
            ScrollViewToPosition(hScrollBar.Value + dx, vScrollBar.Value + dy);

        private void ZoomToPoint(Point origin, float value)
        {
            value = ClampScale(value);
            if (value != scale)
            {
                var factor = value / scale;
                var x = (hScrollBar.Value + origin.X) * factor - origin.X;
                var y = (vScrollBar.Value + origin.Y) * factor - origin.Y;
                scale = value;
                UpdateScrollBarsRange(GetDpi());
                ScrollViewToPosition((int)Math.Round(x), (int)Math.Round(y));
                Invalidate();
                ZoomChanged?.Invoke(this, scale);
            }
        }

        private (float X, float Y) GetDpi()
        {
            using (var graphics = CreateGraphics())
            {
                return (graphics.DpiX, graphics.DpiY);
            }
        }

        private int FindPageFromOffset(double offset)
        {
            var pageNo = pageOffsets.BinarySearch(offset);
            if (pageNo < 0)
            {
                pageNo = ~pageNo - 1;
            }
            return pageNo;
        }

        private Size GetDocumentBoundingBoxInPixels(float dpiX, float dpiY) =>
            Size.Round(documentBoundingBox.ToPixels(scale * dpiX, scale * dpiY));

        private Size CalculateDisplaySize(XSize docBoundingBoxPx, out bool showHScroll, out bool showVScroll)
        {
            showHScroll = false;
            showVScroll = false;
            var displaySize = ClientRectangle.Size;
            if (docBoundingBoxPx.Width > displaySize.Width)
            {
                showHScroll = true;
                displaySize.Height -= hScrollBar.Height;
            }
            if (docBoundingBoxPx.Height > displaySize.Height)
            {
                showVScroll = true;
                displaySize.Width -= vScrollBar.Width;
            }
            if (showVScroll && docBoundingBoxPx.Width > displaySize.Width && !showHScroll)
            {
                showHScroll = true;
                displaySize.Height -= hScrollBar.Height;
            }
            if (showHScroll && docBoundingBoxPx.Height > displaySize.Height && !showVScroll)
            {
                showVScroll = true;
                displaySize.Width -= vScrollBar.Width;
            }
            return displaySize;
        }

        private void UpdateScrollBarsRange((float X, float Y) dpi)
        {
            if (renderer == null)
            {
                return;
            }

            // show/hide scrollbars, update display rect size accordingly
            var docSizeInPx = GetDocumentBoundingBoxInPixels(dpi.X, dpi.Y);
            displaySize = CalculateDisplaySize(docSizeInPx, out var showHScroll, out var showVScroll);

            void updateScrollBarState(ScrollBar scrollBar, bool visible, int max)
            {
                if (visible)
                {
                    if (scrollBar.Value > max)
                    {
                        scrollBar.Value = max;
                    }
                    // bizzare MS API: scrollBar's maximum value set by the user using mouse
                    // is equal to scrollBar.Maximum - scrollBar.LargeChange + 1
                    scrollBar.Maximum = max + scrollBar.LargeChange - 1;
                }
                else
                {
                    scrollBar.Value = 0;
                    scrollBar.Maximum = 0;
                }
                scrollBar.Visible = visible;
            }

            updateScrollBarState(vScrollBar, showVScroll, docSizeInPx.Height - displaySize.Height);
            updateScrollBarState(hScrollBar, showHScroll, docSizeInPx.Width - displaySize.Width);

            // fix scrolls sizes
            if (showVScroll)
            {
                vScrollBar.Height = ClientRectangle.Height;
                if (showHScroll)
                {
                    vScrollBar.Height -= hScrollBar.Height;
                }
            }
            if (showHScroll)
            {
                hScrollBar.Width = ClientRectangle.Width;
                if (showVScroll)
                {
                    hScrollBar.Width -= vScrollBar.Width;
                }
            }
        }

        private void VScrollBar_ValueChanged(object sender, EventArgs e)
        {
            Invalidate();
        }

        private void HScrollBar_ValueChanged(object sender, EventArgs e)
        {
            Invalidate();
        }

        private static float ClampScale(float value) => Math.Min(Math.Max(value, MinZoomScale), MaxZoomScale);
    }
}
