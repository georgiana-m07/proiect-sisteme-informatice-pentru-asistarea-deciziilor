﻿using System;
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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            
        }

        private void btn_afisare_Click(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'DataSet2.DATE_pr' table. You can move, or remove it, as needed.
            this.DATE_prTableAdapter.Fill(this.DataSet2.DATE_pr, Convert.ToInt32(textBox1.Text));
            this.reportViewer1.RefreshReport();
        }

        private void btn_form4_Click(object sender, EventArgs e)
        {
            Form4 f4 = new Form4();
            this.Hide();
            f4.Show();
        }
    }
}
