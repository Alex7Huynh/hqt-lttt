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
    public partial class frmCapNhatThoiHan : Form
    {
        public frmCapNhatThoiHan()
        {
            InitializeComponent();            
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            bool bLoi = !cbFixLoi.Checked;
            string kq = BUS.DoAnBUS.CapNhatThoiHanNop(Login.User, int.Parse(txtMaDoAn.Text), dtpThoiHanNop.Value, "00:00:05", bLoi);
            MessageBox.Show(kq, "Thông báo");
        }
    }
}
