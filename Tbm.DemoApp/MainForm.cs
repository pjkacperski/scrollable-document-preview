using System.Windows.Forms;

namespace Tbm.DemoApp
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            documentView.PageChanged += (s, page) => toolStripStatusPage.Text = $"Page: {page}";
            documentView.ZoomChanged += (s, zoom) => toolStripStatusZoom.Text = $"Zoom: {zoom:P0}";
        }

        private void MainForm_Load(object sender, System.EventArgs e)
        {
            documentView.Ddl = Properties.Resources.ExampleDdl;
            documentView.FitZoomToPageWidth();
        }

        private void ToolStripButtonFitWidth_Click(object sender, System.EventArgs e)
        {
            documentView.FitZoomToPageWidth();
        }

        private void ToolStripButtonFitHeight_Click(object sender, System.EventArgs e)
        {
            documentView.FitZoomToPageHeight();
        }

        private void ToolStripButtonFitToPage_Click(object sender, System.EventArgs e)
        {
            documentView.FitZoomToPage();
        }

        private void ToolStripButtonZoomOut_Click(object sender, System.EventArgs e)
        {
            documentView.ZoomOut();
        }

        private void ToolStripButtonZoomIn_Click(object sender, System.EventArgs e)
        {
            documentView.ZoomIn();
        }
    }
}
