using System;

namespace Tbm.ScrollableDocumentPreview
{
    public class ZoomChangeEventArgs : EventArgs
    {
        public readonly float Zoom;

        public ZoomChangeEventArgs(float zoom)
        {
            Zoom = zoom;
        }
    }
}
