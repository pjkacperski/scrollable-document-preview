
namespace Tbm.DemoApp
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.toolStrip = new System.Windows.Forms.ToolStrip();
            this.toolStripButtonZoomOut = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonZoomIn = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonFitWidth = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonFitHeight = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonFitToPage = new System.Windows.Forms.ToolStripButton();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusPage = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusSpring = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusZoom = new System.Windows.Forms.ToolStripStatusLabel();
            this.documentView = new Tbm.ScrollableDocumentPreview.ScrollableDocumentPreview();
            this.toolStrip.SuspendLayout();
            this.statusStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStrip
            // 
            this.toolStrip.GripMargin = new System.Windows.Forms.Padding(0);
            this.toolStrip.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButtonZoomOut,
            this.toolStripButtonZoomIn,
            this.toolStripButtonFitWidth,
            this.toolStripButtonFitHeight,
            this.toolStripButtonFitToPage});
            this.toolStrip.Location = new System.Drawing.Point(0, 0);
            this.toolStrip.Name = "toolStrip";
            this.toolStrip.Padding = new System.Windows.Forms.Padding(0);
            this.toolStrip.Size = new System.Drawing.Size(1008, 25);
            this.toolStrip.TabIndex = 1;
            // 
            // toolStripButtonZoomOut
            // 
            this.toolStripButtonZoomOut.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripButtonZoomOut.Image = global::Tbm.DemoApp.Properties.Resources.ZoomOut;
            this.toolStripButtonZoomOut.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonZoomOut.Name = "toolStripButtonZoomOut";
            this.toolStripButtonZoomOut.Size = new System.Drawing.Size(82, 22);
            this.toolStripButtonZoomOut.Text = "Zoom Out";
            this.toolStripButtonZoomOut.Click += new System.EventHandler(this.ToolStripButtonZoomOut_Click);
            // 
            // toolStripButtonZoomIn
            // 
            this.toolStripButtonZoomIn.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripButtonZoomIn.Image = global::Tbm.DemoApp.Properties.Resources.ZoomIn;
            this.toolStripButtonZoomIn.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonZoomIn.Name = "toolStripButtonZoomIn";
            this.toolStripButtonZoomIn.Size = new System.Drawing.Size(72, 22);
            this.toolStripButtonZoomIn.Text = "Zoom In";
            this.toolStripButtonZoomIn.Click += new System.EventHandler(this.ToolStripButtonZoomIn_Click);
            // 
            // toolStripButtonFitWidth
            // 
            this.toolStripButtonFitWidth.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripButtonFitWidth.Image = global::Tbm.DemoApp.Properties.Resources.FitWidth;
            this.toolStripButtonFitWidth.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonFitWidth.Name = "toolStripButtonFitWidth";
            this.toolStripButtonFitWidth.Size = new System.Drawing.Size(125, 22);
            this.toolStripButtonFitWidth.Text = "Fit Zoom To Width";
            this.toolStripButtonFitWidth.Click += new System.EventHandler(this.ToolStripButtonFitWidth_Click);
            // 
            // toolStripButtonFitHeight
            // 
            this.toolStripButtonFitHeight.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripButtonFitHeight.Image = global::Tbm.DemoApp.Properties.Resources.FitHeight;
            this.toolStripButtonFitHeight.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonFitHeight.Name = "toolStripButtonFitHeight";
            this.toolStripButtonFitHeight.Size = new System.Drawing.Size(129, 22);
            this.toolStripButtonFitHeight.Text = "Fit Zoom To Height";
            this.toolStripButtonFitHeight.Click += new System.EventHandler(this.ToolStripButtonFitHeight_Click);
            // 
            // toolStripButtonFitToPage
            // 
            this.toolStripButtonFitToPage.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.toolStripButtonFitToPage.Image = global::Tbm.DemoApp.Properties.Resources.FitPage;
            this.toolStripButtonFitToPage.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonFitToPage.Name = "toolStripButtonFitToPage";
            this.toolStripButtonFitToPage.Size = new System.Drawing.Size(119, 22);
            this.toolStripButtonFitToPage.Text = "Fit Zoom To Page";
            this.toolStripButtonFitToPage.Click += new System.EventHandler(this.ToolStripButtonFitToPage_Click);
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusPage,
            this.toolStripStatusSpring,
            this.toolStripStatusZoom});
            this.statusStrip.Location = new System.Drawing.Point(0, 707);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(1008, 22);
            this.statusStrip.TabIndex = 2;
            this.statusStrip.Text = "statusStrip1";
            // 
            // toolStripStatusPage
            // 
            this.toolStripStatusPage.Name = "toolStripStatusPage";
            this.toolStripStatusPage.Size = new System.Drawing.Size(36, 17);
            this.toolStripStatusPage.Text = "Page:";
            // 
            // toolStripStatusSpring
            // 
            this.toolStripStatusSpring.Name = "toolStripStatusSpring";
            this.toolStripStatusSpring.Size = new System.Drawing.Size(915, 17);
            this.toolStripStatusSpring.Spring = true;
            // 
            // toolStripStatusZoom
            // 
            this.toolStripStatusZoom.Name = "toolStripStatusZoom";
            this.toolStripStatusZoom.Size = new System.Drawing.Size(42, 17);
            this.toolStripStatusZoom.Text = "Zoom:";
            // 
            // documentView
            // 
            this.documentView.AutoScroll = true;
            this.documentView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.documentView.Location = new System.Drawing.Point(0, 25);
            this.documentView.Name = "documentView";
            this.documentView.Page = 1;
            this.documentView.Size = new System.Drawing.Size(1008, 682);
            this.documentView.TabIndex = 0;
            this.documentView.Zoom = 0.25F;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 729);
            this.Controls.Add(this.documentView);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.toolStrip);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainForm";
            this.Text = "Document Preview Demo";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.toolStrip.ResumeLayout(false);
            this.toolStrip.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Tbm.ScrollableDocumentPreview.ScrollableDocumentPreview documentView;
        private System.Windows.Forms.ToolStrip toolStrip;
        private System.Windows.Forms.ToolStripButton toolStripButtonFitWidth;
        private System.Windows.Forms.ToolStripButton toolStripButtonFitHeight;
        private System.Windows.Forms.ToolStripButton toolStripButtonFitToPage;
        private System.Windows.Forms.ToolStripButton toolStripButtonZoomIn;
        private System.Windows.Forms.ToolStripButton toolStripButtonZoomOut;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusPage;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusSpring;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusZoom;
    }
}