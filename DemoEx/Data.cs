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
    public partial class Data : Form
    {
        public Data()
        {
            InitializeComponent();
        }

        private void Data_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "driveDataSet2.transport". При необходимости она может быть перемещена или удалена.
            this.transportTableAdapter1.Fill(this.driveDataSet2.transport);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "driveDataSet1.transport". При необходимости она может быть перемещена или удалена.
            this.transportTableAdapter.Fill(this.driveDataSet1.transport);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "driveDataSet.clients_transports". При необходимости она может быть перемещена или удалена.
            this.clients_transportsTableAdapter.Fill(this.driveDataSet.clients_transports);

        }

        private void btnADD_Click(object sender, EventArgs e)
        {
            Add frm = new Add();
            frm.Show();
            this.Hide();
        }

        private void btnDEL_Click(object sender, EventArgs e)
        {
            Admin frm = new Admin();
            frm.Show();
            this.Hide();
        }

        private void btnBACK_Click(object sender, EventArgs e)
        {
            Log frm = new Log();
            frm.Show();
            this.Hide();
        }
    }
}
