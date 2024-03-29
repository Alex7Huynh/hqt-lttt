using System;
using System.Collections.Generic;
using System.Text;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class AbstractDAO
    {
        /// <summary>
        /// Chuỗi kết nối đến CSDL
        /// Mỗi loại CSDL sẽ có 1 chuỗi kết nối khác nhau
        /// Tham khảo: lên google search keyword: connection string sẽ có trang list danh sách các chuỗi kết nối
		/// Thành viên muốn dùng chuỗi nào thì thay đổi chuoiKetNoix ở phương thức MoKetNoi. x theo số thức tự thành viên trong nhóm.
        /// Giáo viên chấm bài chỉ cần thay đổi chuoiKetNoi0 sau đó xuống phương thức MoKetNoi, đổi thành chuoiKetNoix thành chuoiKetNoi0.
        /// </summary>
        private static string chuoiKetNoi0 = @"";
        private static string chuoiKetNoi1 = @"Data Source=HOANGLIEM-PC;Initial Catalog=QLDoAn;Integrated Security=SSPI;User ID=users;Password=;";
        private static string chuoiKetNoi2 = @"Data Source=n_m_t178-pc;Initial Catalog=QLDoAn;Integrated Security=SSPI;User ID=users;Password=;";
		private static string chuoiKetNoi3 = @"Data Source=THT-3205F63E6C7;Initial Catalog=QLDoAn;Integrated Security=SSPI;User ID=users;Password=;";
		private static string chuoiKetNoi4 = @"Data Source=KID-PC\SQLEXPRESS;Initial Catalog=QLDoAn;Integrated Security=SSPI;User ID=users;Password=;";
        

        /// <summary>
        /// Tạo 1 kết nối và mở nó lên
        /// </summary>
        /// <returns>Một kết nối đang mở</returns>
        public static SqlConnection MoKetNoi()
        {
            SqlConnection ketNoi = new SqlConnection(chuoiKetNoi2);
            ketNoi.Open();
            return ketNoi;
        }

        public static void DongKetNoi(SqlConnection sqlCn)
        {
            if (sqlCn != null)
            {
                if (sqlCn.State == ConnectionState.Open)
                    sqlCn.Close();
                sqlCn.Dispose();
            }
        }

        public int ThucThiSPLogin(string username, string password)
        {
            int retunvalue = -1;
            SqlConnection sqlCn = null;
            DataTable dtbTmp = new DataTable();
            SqlCommand sqlCmd = new SqlCommand();
            try
            {
                
                sqlCmd.CommandTimeout = 2000;
                sqlCn = MoKetNoi();
                sqlCmd.Connection = sqlCn;
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.CommandText = MyStored.Login;
                sqlCmd.Parameters.Add(new SqlParameter("@username", username));
                sqlCmd.Parameters.Add(new SqlParameter("@password", password));
                sqlCmd.Parameters.Add(new SqlParameter("@result", retunvalue));
                sqlCmd.Parameters["@result"].Direction = ParameterDirection.Output;                
                sqlCmd.ExecuteNonQuery();
                retunvalue = (int)sqlCmd.Parameters["@result"].Value;

                DongKetNoi(sqlCn);
            }
            catch (SqlException sqlEx)
            {
                throw (sqlEx);
            }
            finally
            {
                if (sqlCn.State == ConnectionState.Open)
                    sqlCn.Close();
                sqlCn.Dispose();
            }
            return retunvalue;

        }
    }
}
