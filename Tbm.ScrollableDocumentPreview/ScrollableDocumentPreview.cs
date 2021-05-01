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
        private const float MaxZoomValue = 5f;
        private const float MinZoomValue = 0.1f;
        private const float ZoomStep = 0.1f;

        private float zoom = 1f;
        private ZoomMode zoomMode;
        private Size displaySize = new Size();

        private DocumentRenderer renderer;
        private XSize documentBoundingBox;
        private List<double> pageOffsets = new List<double>();
        private int page = 1;

        public event EventHandler<ZoomChangeEventArgs> ZoomChanged;

        public event EventHandler<PageChangeEventArgs> PageChanged;

        public Brush PageBackgroundBrush { get; set; } = Brushes.White;

        public Pen PageBorderPen { get; set; } = Pens.LightGray;

        public string Ddl
        {
            set
            {
                if (value == null)
                {
                    renderer = null;
                    Invalidate();
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
                zoom = 1f;
                zoomMode = ZoomMode.Fixed;
                vScrollBar.Value = 0;
                hScrollBar.Value = 0;
                UpdateDisplayRectAndScrollBars(GetDpi());
                ZoomChanged?.Invoke(this, new ZoomChangeEventArgs(zoom));
                PageChanged?.Invoke(this, new PageChangeEventArgs(page));
                Invalidate();
            }
        }

        public float Zoom
        {
            get => zoom;
            set
            {
                var x = hScrollBar.Value * value / zoom;
                var y = vScrollBar.Value * value / zoom;
                if (SetZoom(value, GetDpi()))
                {
                    ScrollViewToPosition((int)Math.Round(x), (int)Math.Round(y));
                    Invalidate();
                }
                zoomMode = ZoomMode.Fixed;
            }
        }

        public int Page
        {
            get => page;
            set
            {
                zoomMode = ZoomMode.Fixed;
                if (value <= 0 || value > pageOffsets.Count)
                {
                    return;
                }
                ScrollViewToPosition(hScrollBar.Value, GetPageOffsetPx(value, GetDpi().Y));
            }
        }

        public int PageCount
        {
            get => renderer.FormattedDocument?.PageCount ?? 0;
        }

        public ScrollableDocumentPreview()
        {
            InitializeComponent();
            SetStyle(ControlStyles.ResizeRedraw, true);
            DoubleBuffered = true;
        }

        public void ZoomIn()
        {
            Zoom += ZoomStep;
        }

        public void ZoomOut()
        {
            Zoom -= ZoomStep;
        }

        public void NextPage()
        {
            ++Page;
        }

        public void PreviousPage()
        {
            --Page;
        }

        public void FitZoomToPageWidth()
        {
            if (renderer == null)
            {
                return;
            }

            var dpi = GetDpi();
            var pageSize = renderer.FormattedDocument.GetPageInfo(page).GetPageSize();
            var pageSizePx = pageSize.ToPixels(dpi.X, dpi.Y);
            var newZoom = ClientRectangle.Width / pageSizePx.Width;
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(newZoom * dpi.X, newZoom * dpi.Y));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we possibly change the zoom again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            newZoom = (float)(displaySize.Width / pageSizePx.Width);
            if (ZoomToPageWidth(newZoom, dpi))
            {
                Invalidate();
            }
            zoomMode = ZoomMode.FitToPageWidth;
        }

        public void FitZoomToPageHeight()
        {
            if (renderer == null)
            {
                return;
            }

            var dpi = GetDpi();
            var pageSizePx = renderer.FormattedDocument.GetPageInfo(page).GetPageSize().ToPixels(dpi.X, dpi.Y);
            var newZoom = ClientRectangle.Height / pageSizePx.Height;
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(newZoom * dpi.X, newZoom * dpi.Y));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we possibly change the zoom again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            newZoom = (float)(displaySize.Height / pageSizePx.Height);
            if (ZoomToPageHeight(newZoom, dpi))
            {
                Invalidate();
            }
            zoomMode = ZoomMode.FitToPageHeight;
        }

        public void FitZoomToPage()
        {
            if (renderer == null)
            {
                return;
            }

            var dpi = GetDpi();
            var clientSize = ClientRectangle.Size;
            var pageSize = renderer.FormattedDocument.GetPageInfo(page).GetPageSize();
            var pageSizePx = pageSize.ToPixels(dpi.X, dpi.Y);
            var newZoom = Math.Min(clientSize.Width / pageSizePx.Width, clientSize.Height / pageSizePx.Height);
            var docSizePx = Size.Round(documentBoundingBox.ToPixels(newZoom * dpi.X, newZoom * dpi.Y));
            var displaySize = CalculateDisplaySize(docSizePx, out var _, out var _);
            // as we possibly change the zoom again, the scrollbar(s) might not be needed any longer
            // that's an easy way to start oscillating, so we don't care if that's the case
            var zoomX = displaySize.Width / pageSizePx.Width;
            var zoomY = displaySize.Height / pageSizePx.Height;
            var viewChanged = zoomX < zoomY ? ZoomToPageWidth(zoomX, dpi) : ZoomToPageHeight(zoomY, dpi);
            if (!ScrollViewToPosition(hScrollBar.Value, GetPageOffsetPx(Page, dpi.Y)) && viewChanged)
            {
                Invalidate();
            }
            zoomMode = ZoomMode.FitToPage;
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            if (renderer == null)
            {
                return;
            }

            var dpiX = e.Graphics.DpiX;
            var dpiY = e.Graphics.DpiY;
            var verticalOffsetInPt = UnitConverter.PixelToPoint(vScrollBar.Value, zoom * dpiY);
            var pageNo = FindPageFromOffset(verticalOffsetInPt);
            var docBoundingBoxPx = GetDocumentBoundingBoxInPixels(dpiX, dpiY);

            // handle special case when the entrire document fits screen horizontally or vertically
            double verticalOffsetPx;
            if (!vScrollBar.Visible) // center document vertically
            {
                verticalOffsetPx = displaySize.Height / 2 - docBoundingBoxPx.Height / 2;
            }
            else
            {
                verticalOffsetPx =
                    UnitConverter.PointToPixel(pageOffsets[pageNo] - verticalOffsetInPt, zoom * dpiY);
            }

            float horizontalOffsetPx;
            if (!hScrollBar.Visible) // center document horizontally
            {
                horizontalOffsetPx = displaySize.Width / 2 - docBoundingBoxPx.Width / 2;
            }
            else
            {
                horizontalOffsetPx = -hScrollBar.Value;
            }

            var doc = renderer.FormattedDocument;
            SetPage(++pageNo); // when people count pages, they start with 1 not 0, which is weird :/
            e.Graphics.SmoothingMode = SmoothingMode.HighQuality;
            e.Graphics.SetClip(new Rectangle(new Point(0, 0), displaySize), CombineMode.Replace);
            while (verticalOffsetPx < displaySize.Height && pageNo <= doc.PageCount)
            {
                var pageSize = doc.GetPageInfo(pageNo).GetPageSize();
                var pageSizePx = pageSize.ToPixels(zoom * dpiX, zoom * dpiY);
                // center each page of the document around the center of the document bounding box
                // it makes a great difference when the pages of the document are of different sizes
                var leftPaddingPx = docBoundingBoxPx.Width / 2 - pageSizePx.Width / 2;
                e.Graphics.TranslateTransform(horizontalOffsetPx + leftPaddingPx, (float)verticalOffsetPx);
                e.Graphics.FillRectangle(PageBackgroundBrush, 0, 0, pageSizePx.Width, pageSizePx.Height);
                e.Graphics.DrawRectangle(PageBorderPen, 0, 0, pageSizePx.Width, pageSizePx.Height);
                var scaleX = pageSizePx.Width / (float)pageSize.Width;
                var scaleY = pageSizePx.Height / (float)pageSize.Height;
                e.Graphics.ScaleTransform(scaleX, scaleY);
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
                verticalOffsetPx += pageSizePx.Height;
                ++pageNo;
            }
        }

        protected override void OnMouseWheel(MouseEventArgs e)
        {
            if (ModifierKeys.HasFlag(Keys.Control))
            {
                if (e.Delta >= 0)
                {
                    ZoomToPoint(e.Location, zoom + ZoomStep);
                }
                else
                {
                    ZoomToPoint(e.Location, zoom - ZoomStep);
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
            UpdateDisplayRectAndScrollBars(GetDpi());
            switch (zoomMode)
            {
                case ZoomMode.FitToPage:
                    FitZoomToPage();
                    break;

                case ZoomMode.FitToPageHeight:
                    FitZoomToPageHeight();
                    break;

                case ZoomMode.FitToPageWidth:
                    FitZoomToPageWidth();
                    break;
            }
        }

        private (float X, float Y) GetDpi()
        {
            using (var graphics = CreateGraphics())
            {
                return (graphics.DpiX, graphics.DpiY);
            }
        }

        private Size GetDocumentBoundingBoxInPixels(float dpiX, float dpiY) =>
            Size.Round(documentBoundingBox.ToPixels(zoom * dpiX, zoom * dpiY));

        private int FindPageFromOffset(double offset)
        {
            if (pageOffsets.Count == 0)
            {
                return 0;
            }

            var pageNo = pageOffsets.BinarySearch(offset);
            if (pageNo < 0)
            {
                pageNo = ~pageNo - 1;
            }
            return pageNo;
        }

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

        private void UpdateDisplayRectAndScrollBars((float X, float Y) dpi)
        {
            if (renderer == null)
            {
                return;
            }

            // show/hide scrollbars, update display rect size accordingly
            var docSizePx = GetDocumentBoundingBoxInPixels(dpi.X, dpi.Y);
            displaySize = CalculateDisplaySize(docSizePx, out var showHScroll, out var showVScroll);

            void updateScrollBarState(ScrollBar scrollBar, bool visible, int max)
            {
                if (visible)
                {
                    if (scrollBar.Value > max)
                    {
                        scrollBar.Value = max;
                    }
                    // bizarre MS API: scrollBar's maximum value set by the user using mouse
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

            updateScrollBarState(vScrollBar, showVScroll, docSizePx.Height - displaySize.Height + 1);
            updateScrollBarState(hScrollBar, showHScroll, docSizePx.Width - displaySize.Width + 1);

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

        private bool SetPage(int value)
        {
            if (page == value || value <= 0 || value > pageOffsets.Count)
            {
                return false;
            }
            page = value;
            PageChanged?.Invoke(this, new PageChangeEventArgs(page));
            return true;
        }

        private bool SetZoom(float value, (float X, float Y) dpi)
        {
            value = ClampZoom(value);
            if (zoom == value)
            {
                return false;
            }
            zoom = value;
            UpdateDisplayRectAndScrollBars(dpi);
            ZoomChanged?.Invoke(this, new ZoomChangeEventArgs(zoom));
            return true;
        }

        private bool ZoomToPageWidth(float newZoom, (float X, float Y) dpi)
        {
            var y = vScrollBar.Value * newZoom / zoom;
            if (SetZoom(newZoom, dpi))
            {
                ScrollViewToPosition(GetCurrentPageLeftPadding(dpi.X), (int)Math.Round(y));
                return true;
            }
            return false;
        }

        private bool ZoomToPageHeight(float newZoom, (float X, float Y) dpi)
        {
            var x = hScrollBar.Value * newZoom / zoom;
            if (SetZoom(newZoom, dpi))
            {
                ScrollViewToPosition((int)Math.Round(x), GetPageOffsetPx(page, dpi.Y));
                return true;
            }
            return false;
        }

        private void ZoomToPoint(Point origin, float value)
        {
            var factor = value / zoom;
            var x = (hScrollBar.Value + origin.X) * factor - origin.X;
            var y = (vScrollBar.Value + origin.Y) * factor - origin.Y;
            if (SetZoom(value, GetDpi()))
            {
                ScrollViewToPosition((int)Math.Round(x), (int)Math.Round(y));
                Invalidate();
            }
            zoomMode = ZoomMode.Fixed;
        }

        private bool ScrollViewToPosition(int x, int y)
        {
            if (renderer == null)
            {
                return false;
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
            return scrollBarValueChanged;
        }

        private bool ScrollViewByOffset(int dx, int dy) =>
            ScrollViewToPosition(hScrollBar.Value + dx, vScrollBar.Value + dy);

        private int GetPageOffsetPx(int page, float dpiY) =>
            (int)Math.Ceiling(UnitConverter.PointToPixel(pageOffsets[page - 1], zoom * dpiY));

        private int GetCurrentPageLeftPadding(float dpiX)
        {
            if (!hScrollBar.Visible)
            {
                return 0;
            }
            var docWidthPx = UnitConverter.PointToPixel(documentBoundingBox.Width, zoom * dpiX);
            var pageSize = renderer.FormattedDocument.GetPageInfo(page).GetPageSize();
            var pageWidthPx = UnitConverter.PointToPixel(pageSize.Width, zoom * dpiX);
            return (int)Math.Round(docWidthPx / 2 - pageWidthPx / 2);
        }

        private void VScrollBar_ValueChanged(object sender, EventArgs e)
        {
            zoomMode = ZoomMode.Fixed;
            Invalidate();
        }

        private void HScrollBar_ValueChanged(object sender, EventArgs e)
        {
            zoomMode = ZoomMode.Fixed;
            Invalidate();
        }

        private static float ClampZoom(float value) => Math.Min(Math.Max(value, MinZoomValue), MaxZoomValue);
    }
}
