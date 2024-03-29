﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS;
namespace ProjectRegistration
{
    public partial class frmCapNhatSoLuongSV : Form
    {
        public frmCapNhatSoLuongSV()
        {
            InitializeComponent();
        }

        private void frmCapNhatSoLuongSV_Load(object sender, EventArgs e)
        {

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            int kq;
            bool bLoi = !cbFixLoi.Checked;
            if(bLoi)
                kq = BUS.MonHocBUS.CapNhatSLSVNhom(Login.User, txtTenMonHoc.Text, (int)NumberValue.Value, "00:00:05", bLoi);
            else
            {
                kq = BUS.MonHocBUS.CapNhatSLSVNhom(Login.User, txtTenMonHoc.Text, (int)NumberValue.Value, "00:00:05", bLoi);
                System.Threading.Thread.Sleep(5000);
            }
            if(kq == -1)
                MessageBox.Show("Bạn không được phân công dạy môn này", "Thông báo");
            else
                MessageBox.Show("Số lượng sinh viên nhóm hiện tại là " + kq.ToString(), "Thông báo");
        }

    }
}
