using MigraDoc.Rendering;
using PdfSharp;
using PdfSharp.Drawing;
using System;
using System.Drawing;

namespace Tbm.ScrollableDocumentPreview
{
    public static class GraphicsExtensions
    {
        public static XSize GetPageSize(this PageInfo pageInfo)
        {
            switch (pageInfo.Orientation)
            {
                case PageOrientation.Portrait:
                    return new XSize(pageInfo.Width, pageInfo.Height);

                case PageOrientation.Landscape:
                    return new XSize(pageInfo.Height, pageInfo.Width);
            }
            throw new ArgumentOutOfRangeException(nameof(pageInfo.Orientation));
        }

        public static SizeF ToPixels(this XSize size, float dpiX, float dpiY)
        {
            return new SizeF
            {
                Width = (float)UnitConverter.PointToPixel(size.Width, dpiX),
                Height = (float)UnitConverter.PointToPixel(size.Height, dpiY)
            };
        }

        public static XPoint ToPoints(this Point point, float dpiX, float dpiY)
        {
            return new XPoint
            {
                X = UnitConverter.PixelToPoint(point.X, dpiX),
                Y = UnitConverter.PixelToPoint(point.Y, dpiY)
            };
        }

        public static PointF ToPixels(this XPoint point, float dpiX, float dpiY)
        {
            return new PointF
            {
                X = (float)UnitConverter.PointToPixel(point.X, dpiX),
                Y = (float)UnitConverter.PointToPixel(point.Y, dpiY)
            };
        }

        public static XSize ToPoints(this Size size, float dpiX, float dpiY)
        {
            return new XSize
            {
                Width = UnitConverter.PixelToPoint(size.Width, dpiX),
                Height = UnitConverter.PixelToPoint(size.Height, dpiY)
            };
        }

        public static void SetInternalGraphicsToNull(this XGraphics gfx)
        {
            gfx.GetType().GetField("_gfx", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance).SetValue(gfx, null);
        }
    }
}
