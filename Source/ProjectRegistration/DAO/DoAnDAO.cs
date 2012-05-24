using System;
using System.Collections.Generic;
using System.Text;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class DoAnDAO
    {
        public static string CapNhatThoiHanNop(string MaGV, int MaDoAn, DateTime ThoiHanNop)
        {            
            string kq = string.Empty;
            
            SqlConnection sqlCn = null;
            DataTable dtbTmp = new DataTable();
            SqlCommand sqlCmd = new SqlCommand();
            try
            {

                sqlCmd.CommandTimeout = 2000;
                sqlCn = AbstractDAO.MoKetNoi();
                sqlCmd.Connection = sqlCn;
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.CommandText = MyStored.CapNhatThoiGianNopDoAn_Error;
                sqlCmd.Parameters.Add(new SqlParameter("@MaGiaoVien", MaGV));
                sqlCmd.Parameters.Add(new SqlParameter("@MaDoAn", MaDoAn));
                sqlCmd.Parameters.Add(new SqlParameter("@ThoiHanNopMoi", ThoiHanNop));
                sqlCmd.Parameters.Add(new SqlParameter("@KetQua", kq));
                sqlCmd.Parameters["@KetQua"].Direction = ParameterDirection.Output;
                //sqlCmd.Parameters.Direction = ParameterDirection.ReturnValue;
                sqlCmd.ExecuteNonQuery();
                kq = (string)sqlCmd.Parameters["@KetQua"].Value;

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
