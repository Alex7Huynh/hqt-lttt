using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS;
using DTO;
namespace ProjectRegistration
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        public static string User;
        private void btn_dn_Click(object sender, EventArgs e)
        {
            string userName = tb_tendn.Text.Trim();
            string pass = tb_dk.Text.Trim();
            DAO.AbstractDAO login = new DAO.AbstractDAO();
            int kq = login.ThucThiSPLogin(userName, pass);
            if (kq == 1)
            {
                Login.User = userName;
                MessageBox.Show("Bạn đang đăng nhập bằng tài khoản sinh viên", "Thông báo");
                //this.Visible = false;                
                MainForm frm = new MainForm();
                frm.btnCapNhatDoAn.Enabled = false;
                frm.btnCapNhatSLSV.Enabled = false;
                frm.Show();
            }
            if (kq == 2)
            {
                Login.User = userName;
                MessageBox.Show("Bạn đang đăng nhập bằng tài khoản giáo viên", "Thông báo");
                //this.Visible = false;
                MainForm frm = new MainForm();
                //nếu giao viên thì không cho làm trên cái button này
                frm.btnDangKyDoAn.Enabled = false;
                frm.btnHuyDoAn.Enabled = false;
                frm.Show();
            }
            if(kq != 1 && kq != 2)
                MessageBox.Show("Đăng nhập thất bại", "Thông báo");
        }

        private void btn_dong_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
