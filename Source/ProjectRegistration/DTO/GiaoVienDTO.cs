using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
    public class GiaoVienDTO
    {
        private string maGiaoVien = "";

        public string MaGiaoVien
        {
            get { return maGiaoVien; }
            set { maGiaoVien = value; }
        }
        private string tenGiaoVien = "";

        public string TenGiaoVien
        {
            get { return tenGiaoVien; }
            set { tenGiaoVien = value; }
        }

        private DateTime ngaySinh = DateTime.Now.AddYears(18);

        public DateTime NgaySinh
        {
            get { return ngaySinh; }
            set { ngaySinh = value; }
        }

        private string tinhTrang;

        public string TinhTrang
        {
            get { return tinhTrang; }
            set { tinhTrang = value; }
        }

        private string matKhau;

        public string MatKhau
        {
            get { return matKhau; }
            set { matKhau = value; }
        }
    }
}
