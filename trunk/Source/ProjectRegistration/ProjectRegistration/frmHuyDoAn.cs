using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.OleDb;
using DAO;
namespace ProjectRegistration
{
    public partial class frmHuyDoAn : Form
    {
        public static List<string> DSMaDe = new List<string>();
        public frmHuyDoAn()
        {
            InitializeComponent();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            string MaSV = Login.User;
            int MaDe = int.Parse(cmbMaDe.SelectedValue.ToString());
            bool DemoLoi = true;
            if (checkBox1.Checked)
                DemoLoi = false;
            int kq = BUS.DoAnBUS.HuyDoAn(MaSV, MaDe, DemoLoi);
            if (kq == 1)
            {
                MessageBox.Show("Bạn hủy đồ án thành công");
                layDSMaDe();
                cmbMaDe.DataSource = DSMaDe;
            }
            else
            {
                MessageBox.Show("Không thể hủy đồ án");
            }
        }
        private static void layDSMaDe()
        {
            SqlConnection sqlCn = null;
            DataTable dtbTmp = new DataTable();
            SqlCommand sqlCmd = new SqlCommand();
            try
            {
                sqlCmd.CommandTimeout = 2000;
                sqlCn = AbstractDAO.MoKetNoi();
                sqlCmd.Connection = sqlCn;
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.CommandText = MyStored.DSMaDeTheoSinhVien;             
                sqlCmd.Parameters.Add(new SqlParameter("@MaSV", Login.User));
                SqlDataReader rdr = sqlCmd.ExecuteReader();
                // rdr để duyệt từng dòng dữ liệu được đọc lên của store khi câu lệnh select dữ liệu có trong store 
                while (rdr.Read())
                {
                    DSMaDe.Add(rdr[0].ToString());          
                }
                rdr.Close();
                AbstractDAO.DongKetNoi(sqlCn);
            }
            catch (Exception ex)
            {
                throw (ex);

            }
            finally
            {
                AbstractDAO.DongKetNoi(sqlCn);
            }
        }
        private void frmHuyDoAn_Load(object sender, EventArgs e)
        {
            layDSMaDe();            
            cmbMaDe.DataSource = DSMaDe;
            
        }
    }
}
