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
    public partial class frmDangKyDoAn : Form
    {
        public frmDangKyDoAn()
        {
            InitializeComponent();
        }
        private void LayThongTinNhomDangKy()
        {
            int[] A = BUS.DoAnBUS.LaySoNhomDaDangKyDoAn(9);
            int soNhomToiDa = A[0];
            int soNhomDangKy = A[1];
            tbSoNhomToiDa.Text = "Số nhóm tối đa cho đồ án: " + soNhomToiDa;
            tbSoNhomDangKy.Text = "Số nhóm đăng ký đồ án 9: " + soNhomDangKy;
        }
        private void frmDangKyDoAn_Load(object sender, EventArgs e)
        {
            LayThongTinNhomDangKy();
            lbSinhVien.Text = Login.User.Trim();
        }
        private void btDangKy_Click(object sender, EventArgs e)
        {
            string maSinhVien = Login.User.Trim();
            int maDe = int.Parse(tbMaDe.Text.Trim());
            string timeWait = tbTimeWait.Text.Trim();
            bool loi = true;
            if (cbFixLoi.Checked)
            {
                loi = false;
            }
            int result = BUS.DoAnBUS.DangKyDoAn(maSinhVien, maDe, timeWait, loi);
            if (result == 0)
            {
                lbMessage.Text = "Dăng ký thất bại";
            }
            else
            {
                LayThongTinNhomDangKy();
                lbMessage.Text = "Dăng ký thành công";
            }
        }
    }
}
