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
        public static string CapNhatThoiHanNop(string MaGV, int MaDoAn, DateTime ThoiHanNop, string WaitingTime, bool Loi)
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
                if (Loi)
                {
                    sqlCmd.CommandText = MyStored.CapNhatThoiGianNopDoAn_Error;
                }
                else
                {
                    sqlCmd.CommandText = MyStored.CapNhatThoiGianNopDoAn_Fix;
                }
                sqlCmd.Parameters.Add(new SqlParameter("@MaGiaoVien", MaGV));
                sqlCmd.Parameters.Add(new SqlParameter("@MaDoAn", MaDoAn));
                sqlCmd.Parameters.Add(new SqlParameter("@ThoiHanNopMoi", ThoiHanNop));
                sqlCmd.Parameters.Add(new SqlParameter("@WaitingTime", ThoiHanNop));
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
        public static string DangKyDoAn(string maSinhVien, int maDe, string WaitingTime, bool Loi)
        {
            string result = string.Empty;
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
                sqlCmd.Parameters.Add(new SqlParameter("@WaitingTime", WaitingTime));
                sqlCmd.Parameters.Add(new SqlParameter("@KetQua", result));
                sqlCmd.Parameters["@KetQua"].Direction = ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                result = (string)sqlCmd.Parameters["@KetQua"].Value;
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
            return result;
        }
        public static int HuyDoAn(string maSinhVien, int maDe, bool Loi)
        {
            int result = new int();
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
                    sqlCmd.CommandText = MyStored.HuyDoAn_Error;
                }
                else
                {
                    sqlCmd.CommandText = MyStored.HuyDoAn_Fix;
                }
                sqlCmd.Parameters.Add(new SqlParameter("@MaSinhVien", maSinhVien));
                sqlCmd.Parameters.Add(new SqlParameter("@MaDe", maDe));
                sqlCmd.Parameters.Add(new SqlParameter("@KetQua", result));
                sqlCmd.Parameters["@KetQua"].Direction = ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                result = int.Parse(sqlCmd.Parameters["@KetQua"].Value.ToString());
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
            return result;
        }
    }
}
