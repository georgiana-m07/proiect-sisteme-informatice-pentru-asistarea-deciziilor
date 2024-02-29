
namespace proiect
{
    partial class Form3
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
            this.DATE_prBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSet2 = new proiect.DataSet2();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btn_afisare = new System.Windows.Forms.Button();
            this.btn_form4 = new System.Windows.Forms.Button();
            this.DATE_prTableAdapter = new proiect.DataSet2TableAdapters.DATE_prTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.DATE_prBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet2)).BeginInit();
            this.SuspendLayout();
            // 
            // DATE_prBindingSource
            // 
            this.DATE_prBindingSource.DataMember = "DATE_pr";
            this.DATE_prBindingSource.DataSource = this.DataSet2;
            // 
            // DataSet2
            // 
            this.DataSet2.DataSetName = "DataSet2";
            this.DataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet2";
            reportDataSource1.Value = this.DATE_prBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "proiect.Report3.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(36, 55);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(512, 290);
            this.reportViewer1.TabIndex = 0;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(584, 55);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(110, 20);
            this.textBox1.TabIndex = 1;
            // 
            // btn_afisare
            // 
            this.btn_afisare.Location = new System.Drawing.Point(584, 106);
            this.btn_afisare.Name = "btn_afisare";
            this.btn_afisare.Size = new System.Drawing.Size(110, 49);
            this.btn_afisare.TabIndex = 2;
            this.btn_afisare.Text = "Afisare";
            this.btn_afisare.UseVisualStyleBackColor = true;
            this.btn_afisare.Click += new System.EventHandler(this.btn_afisare_Click);
            // 
            // btn_form4
            // 
            this.btn_form4.Location = new System.Drawing.Point(584, 252);
            this.btn_form4.Name = "btn_form4";
            this.btn_form4.Size = new System.Drawing.Size(110, 49);
            this.btn_form4.TabIndex = 3;
            this.btn_form4.Text = "Form 4";
            this.btn_form4.UseVisualStyleBackColor = true;
            this.btn_form4.Click += new System.EventHandler(this.btn_form4_Click);
            // 
            // DATE_prTableAdapter
            // 
            this.DATE_prTableAdapter.ClearBeforeFill = true;
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btn_form4);
            this.Controls.Add(this.btn_afisare);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Form3";
            this.Text = "Form3";
            this.Load += new System.EventHandler(this.Form3_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DATE_prBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btn_afisare;
        private System.Windows.Forms.Button btn_form4;
        private System.Windows.Forms.BindingSource DATE_prBindingSource;
        private DataSet2 DataSet2;
        private DataSet2TableAdapters.DATE_prTableAdapter DATE_prTableAdapter;
    }
}