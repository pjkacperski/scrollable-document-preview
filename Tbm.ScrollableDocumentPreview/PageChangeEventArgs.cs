using System;

namespace Tbm.ScrollableDocumentPreview
{
    public class PageChangeEventArgs : EventArgs
    {
        public readonly int Page;

        public PageChangeEventArgs(int page)
        {
            Page = page;
        }
    }
}
