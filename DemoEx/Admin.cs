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
    public partial class Admin : Form
    {
        public Admin()
        {
            InitializeComponent();
        }

        private void btnBACK_Click(object sender, EventArgs e)
        {
            Data frm = new Data();
            frm.Show();
            this.Hide();
        }

        private void Admin_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "driveDataSet4.users". При необходимости она может быть перемещена или удалена.
            this.usersTableAdapter.Fill(this.driveDataSet4.users);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "driveDataSet3.clients". При необходимости она может быть перемещена или удалена.
            this.clientsTableAdapter.Fill(this.driveDataSet3.clients);

        }
    }
}
