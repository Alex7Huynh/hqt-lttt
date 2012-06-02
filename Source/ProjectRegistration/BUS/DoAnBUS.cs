using System;
using System.Collections.Generic;
using System.Text;

namespace BUS
{
    public class DoAnBUS
    {
        public static string CapNhatThoiHanNop(string MaGV, int MaDoAn, DateTime ThoiHanNop)
        {
            return DAO.DoAnDAO.CapNhatThoiHanNop(MaGV, MaDoAn, ThoiHanNop);
        }
        public static int[] LaySoNhomDaDangKyDoAn(int maDoAn)
        {
            return DAO.DoAnDAO.LaySoNhomDaDangKyDoAn(maDoAn);
        }
        public static string DangKyDoAn(string maSinhVien, int maDe, string timeWait, bool Loi)
        {
            return DAO.DoAnDAO.DangKyDoAn(maSinhVien, maDe, timeWait, Loi);
        }
        public static int HuyDoAn(string maSinhVien, int maDe, bool loi)
        {
            return DAO.DoAnDAO.HuyDoAn(maSinhVien, maDe, loi);
        }
    }
}
