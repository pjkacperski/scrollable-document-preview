namespace Tbm.ScrollableDocumentPreview
{
    internal static class UnitConverter
    {
        public static double InchToPoint = 72.0;
        public static double PointToInch = 1.0 / InchToPoint;

        public static double PointToPixel(double pt, float dpi) => pt * PointToInch * dpi;

        public static double PixelToPoint(int px, float dpi) => InchToPoint * px / dpi;
    }
}
