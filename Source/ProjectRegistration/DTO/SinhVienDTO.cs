using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
    public class SinhVienDTO
    {   
        private string maSinhVien="";

        public string MaSinhVien
        {
            get { return maSinhVien; }
            set { maSinhVien = value; }
        }
        private string tenSinhVien="";

        public string TenSinhVien
        {
            get { return tenSinhVien; }
            set { tenSinhVien = value; }
        }
        
        private DateTime ngaySinh=DateTime.Now.AddYears(18);

        public DateTime NgaySinh
        {
            get { return ngaySinh; }
            set { ngaySinh = value; }
        }

        private string khoaHoc;

        public string KhoaHoc
        {
            get { return khoaHoc; }
            set { khoaHoc = value; }
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
