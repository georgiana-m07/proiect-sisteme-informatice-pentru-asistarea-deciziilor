using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proiect
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'SIADDataSet.ANGAJATI_pr' table. You can move, or remove it, as needed.
            this.ANGAJATI_prTableAdapter.Fill(this.SIADDataSet.ANGAJATI_pr);

            this.reportViewer1.RefreshReport();
        }
    }
}
