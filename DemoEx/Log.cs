using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DemoEx
{
    public partial class Log : Form
    {
        public Log()
        {
            InitializeComponent();
        }

        private void btnENT_Click(object sender, EventArgs e)
        {
            Data frm = new Data();
            frm.Show();
            this.Hide();
        }

        private void btnEXIT_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
