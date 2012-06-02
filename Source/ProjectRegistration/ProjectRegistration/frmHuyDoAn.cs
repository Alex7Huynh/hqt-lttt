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
    public partial class frmHuyDoAn : Form
    {
        public frmHuyDoAn()
        {
            InitializeComponent();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            string MaSV = Login.User;
            int MaDe = int.Parse(txtMaDe.Text);
            bool DemoLoi = true;
            if (checkBox1.Checked)
                DemoLoi = false;
            int kq = BUS.DoAnBUS.HuyDoAn(MaSV, MaDe, DemoLoi);
            if (kq == 1)
            {
                MessageBox.Show("Bạn hủy đồ án thành công");
            }
            else
            {
                MessageBox.Show("Không thể hủy đồ án");
            }
        }
    }
}
