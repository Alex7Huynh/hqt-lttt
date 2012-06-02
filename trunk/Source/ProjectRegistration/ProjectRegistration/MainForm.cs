using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ProjectRegistration
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }
        
        private void btnDangKyDoAn_Click(object sender, EventArgs e)
        {
            frmDangKyDoAn frm = new frmDangKyDoAn();
            frm.Show();
        }

        private void btnCapNhatDoAn_Click(object sender, EventArgs e)
        {
            frmCapNhatThoiHan frm = new frmCapNhatThoiHan();
            frm.Show();
        }

        private void btnHuyDoAn_Click(object sender, EventArgs e)
        {
            frmHuyDoAn frm = new frmHuyDoAn();
            frm.Show();
        }

        private void btnCapNhatSLSV_Click(object sender, EventArgs e)
        {
            frmCapNhatSoLuongSV frm = new frmCapNhatSoLuongSV();
            frm.Show();
        }

        private void btnAbout_Click(object sender, EventArgs e)
        {
            About form = new About();
            form.Show();

        }

        private void MainForm_Load(object sender, EventArgs e)
        {

        }
    }
}
