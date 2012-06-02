using System;
using System.Collections.Generic;
using System.Text;

namespace BUS
{
    public class DoAnBUS
    {
        public static string CapNhatThoiHanNop(string MaGV, int MaDoAn, DateTime ThoiHanNop, string WaitingTime, bool Loi)
        {
            return DAO.DoAnDAO.CapNhatThoiHanNop(MaGV, MaDoAn, ThoiHanNop, WaitingTime, Loi);
        }
        public static int[] LaySoNhomDaDangKyDoAn(int maDoAn)
        {
            return DAO.DoAnDAO.LaySoNhomDaDangKyDoAn(maDoAn);
        }
        public static string DangKyDoAn(string maSinhVien, int maDe, string WaitingTime, bool Loi)
        {
            return DAO.DoAnDAO.DangKyDoAn(maSinhVien, maDe, WaitingTime, Loi);
        }
        public static int HuyDoAn(string maSinhVien, int maDe, bool loi)
        {
            return DAO.DoAnDAO.HuyDoAn(maSinhVien, maDe, loi);
        }
    }
}
