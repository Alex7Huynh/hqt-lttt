using System;
using System.Collections.Generic;
using System.Text;
using DTO;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class MonHocDAO:AbstractDAO  //Để sử dụng hàm TaoKetNoi()
    {        
        public static int CapNhatSLSVNhom(string MaGV, string TenMonHoc, int Count, string WaitingTime, bool Loi)
        {
            int kq = -2;
            SqlConnection sqlCn = null;
            DataTable dtbTmp = new DataTable();
            SqlCommand sqlCmd = new SqlCommand();
            try
            {

                sqlCmd.CommandTimeout = 2000;
                sqlCn = AbstractDAO.MoKetNoi();
                sqlCmd.Connection = sqlCn;
                sqlCmd.CommandType = CommandType.StoredProcedure;
                if (Loi)
                {
                    sqlCmd.CommandText = MyStored.CapNhatSoLuongSVNhom_Error;
                }
                else
                {
                    sqlCmd.CommandText = MyStored.CapNhatSoLuongSVNhom_Fix;
                }
                sqlCmd.Parameters.Add(new SqlParameter("@MaGiaoVien", MaGV));
                sqlCmd.Parameters.Add(new SqlParameter("@TenMonHoc", TenMonHoc));
                sqlCmd.Parameters.Add(new SqlParameter("@Count", Count));
                sqlCmd.Parameters.Add(new SqlParameter("@WaitingTime", WaitingTime));
                sqlCmd.Parameters.Add(new SqlParameter("@KetQua", kq));
                sqlCmd.Parameters["@KetQua"].Direction = ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                kq = (int)sqlCmd.Parameters["@KetQua"].Value;

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
            return kq;
        }
    }
}
