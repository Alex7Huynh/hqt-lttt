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
using DAO;
namespace ProjectRegistration
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void btn_dn_Click(object sender, EventArgs e)
        {
            string userName = tb_tendn.Text.Trim();
            string pass = tb_dk.Text.Trim();
            AbstractDAO login = new AbstractDAO();
            int kq = login.ThucThiSPLogin("spLogin",  userName, pass);
            if (kq == 1)
                MessageBox.Show("Bạn đang đăng nhập bằng tài khoản sinh viên");
            if (kq == 2)
                MessageBox.Show("Bạn đang đăng nhập bằng tài khoản giáo viên");
            if(kq != 1 && kq != 2)
                MessageBox.Show("Đăng nhập thất bại");
        }

        private void btn_dong_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
