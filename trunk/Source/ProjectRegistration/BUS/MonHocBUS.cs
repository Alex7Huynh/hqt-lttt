using System;
using System.Collections.Generic;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class MonHocBUS
    {
        //public static List<MonHocDTO> LayDSMon()
        //{
        //    return MonHocDAO.LayDSMon();
        //}
        public static int CapNhatSLSVNhom(string MaGV, string TenMonHoc, int Count, string WaitingTime, bool Loi)
        {
            return DAO.MonHocDAO.CapNhatSLSVNhom(MaGV, TenMonHoc, Count, WaitingTime, Loi);
        }
    }
}
