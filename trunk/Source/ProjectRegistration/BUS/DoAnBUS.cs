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
    }
}
