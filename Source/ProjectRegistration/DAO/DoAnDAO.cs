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
        public static int[] LaySoNhomDaDangKyDoAn(int maDoAn)
        {
            int soNhomToiDa = 0;
            int soNhomDaDangKy = 0;
            int[] A = new int[2];

            SqlConnection sqlCn = null;
            DataTable dtbTmp = new DataTable();
            SqlCommand sqlCmd = new SqlCommand();
            try
            {
                sqlCmd.CommandTimeout = 2000;
                sqlCn = AbstractDAO.MoKetNoi();
                sqlCmd.Connection = sqlCn;
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.CommandText = MyStored.LayThongTinSoNhomDoAn;
                sqlCmd.Parameters.Add(new SqlParameter("@MaDoAn", maDoAn));
                sqlCmd.Parameters.Add(new SqlParameter("@SoNhomToiDa", soNhomToiDa));
                sqlCmd.Parameters.Add(new SqlParameter("@SoNhomDaDangKy", soNhomDaDangKy));
                sqlCmd.Parameters["@SoNhomToiDa"].Direction = ParameterDirection.Output;
                sqlCmd.Parameters["@SoNhomDaDangKy"].Direction = ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                soNhomToiDa = (int)sqlCmd.Parameters["@SoNhomToiDa"].Value;
                soNhomDaDangKy = (int)sqlCmd.Parameters["@SoNhomDaDangKy"].Value;
                A[0] = soNhomToiDa;
                A[1] = soNhomDaDangKy;
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
            return A;
        }
        public static int DangKyDoAn(string maSinhVien, int maDe,string timeWait, bool Loi)
        {
            int result = 0;
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
                    sqlCmd.CommandText = MyStored.DangKyDoAn_Error;
                }
                else
                {
                    sqlCmd.CommandText = MyStored.DangKyDoAn_Fix;
                }
                sqlCmd.Parameters.Add(new SqlParameter("@MaSinhVien", maSinhVien));
                sqlCmd.Parameters.Add(new SqlParameter("@MaDe", maDe));
                sqlCmd.Parameters.Add(new SqlParameter("@Wait", timeWait));
                sqlCmd.Parameters.Add(new SqlParameter("@KetQua", result));
                sqlCmd.Parameters["@KetQua"].Direction = ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                result = (int)sqlCmd.Parameters["@KetQua"].Value;
                AbstractDAO.DongKetNoi(sqlCn);
            }
            catch (Exception ex)
            {
               // throw (ex);
                result = 0;
            }
            finally
            {
                AbstractDAO.DongKetNoi(sqlCn);
            }
            return result;
        }
    }
}
