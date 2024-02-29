
namespace proiect
{
    partial class Form4
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.SIADDataSet = new proiect.SIADDataSet();
            this.ANGAJATI_prBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ANGAJATI_prTableAdapter = new proiect.SIADDataSetTableAdapters.ANGAJATI_prTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.SIADDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ANGAJATI_prBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet04";
            reportDataSource1.Value = this.ANGAJATI_prBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "proiect.Report4.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(12, 12);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(974, 375);
            this.reportViewer1.TabIndex = 0;
            // 
            // SIADDataSet
            // 
            this.SIADDataSet.DataSetName = "SIADDataSet";
            this.SIADDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // ANGAJATI_prBindingSource
            // 
            this.ANGAJATI_prBindingSource.DataMember = "ANGAJATI_pr";
            this.ANGAJATI_prBindingSource.DataSource = this.SIADDataSet;
            // 
            // ANGAJATI_prTableAdapter
            // 
            this.ANGAJATI_prTableAdapter.ClearBeforeFill = true;
            // 
            // Form4
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1011, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Form4";
            this.Text = "Form4";
            this.Load += new System.EventHandler(this.Form4_Load);
            ((System.ComponentModel.ISupportInitialize)(this.SIADDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ANGAJATI_prBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource ANGAJATI_prBindingSource;
        private SIADDataSet SIADDataSet;
        private SIADDataSetTableAdapters.ANGAJATI_prTableAdapter ANGAJATI_prTableAdapter;
    }
}