using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
    public class MonHocDTO
    {
        private long maMonHoc;

        public long MaMonHoc
        {
            get { return maMonHoc; }
            set { maMonHoc = value; }
        }
        private string tenMonHoc;

        public string TenMonHoc
        {
            get { return tenMonHoc; }
            set { tenMonHoc = value; }
        }
    }
}
