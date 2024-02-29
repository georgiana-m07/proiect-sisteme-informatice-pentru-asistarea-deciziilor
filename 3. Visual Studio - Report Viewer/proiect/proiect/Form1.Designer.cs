
namespace proiect
{
    partial class Form1
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
            this.ANGAJATI_prBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.SIADDataSet = new proiect.SIADDataSet();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.ANGAJATI_prTableAdapter = new proiect.SIADDataSetTableAdapters.ANGAJATI_prTableAdapter();
            this.form2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.ANGAJATI_prBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.SIADDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // ANGAJATI_prBindingSource
            // 
            this.ANGAJATI_prBindingSource.DataMember = "ANGAJATI_pr";
            this.ANGAJATI_prBindingSource.DataSource = this.SIADDataSet;
            // 
            // SIADDataSet
            // 
            this.SIADDataSet.DataSetName = "SIADDataSet";
            this.SIADDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.ANGAJATI_prBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "proiect.Report1.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(40, 36);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(537, 402);
            this.reportViewer1.TabIndex = 0;
            // 
            // ANGAJATI_prTableAdapter
            // 
            this.ANGAJATI_prTableAdapter.ClearBeforeFill = true;
            // 
            // form2
            // 
            this.form2.Location = new System.Drawing.Point(635, 58);
            this.form2.Name = "form2";
            this.form2.Size = new System.Drawing.Size(110, 46);
            this.form2.TabIndex = 1;
            this.form2.Text = "Form 2";
            this.form2.UseVisualStyleBackColor = true;
            this.form2.Click += new System.EventHandler(this.form2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.form2);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ANGAJATI_prBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.SIADDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource ANGAJATI_prBindingSource;
        private SIADDataSet SIADDataSet;
        private SIADDataSetTableAdapters.ANGAJATI_prTableAdapter ANGAJATI_prTableAdapter;
        private System.Windows.Forms.Button form2;
    }
}

