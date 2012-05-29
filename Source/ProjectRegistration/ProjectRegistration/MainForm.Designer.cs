namespace ProjectRegistration
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnDangKyDoAn = new System.Windows.Forms.Button();
            this.btnCapNhatDoAn = new System.Windows.Forms.Button();
            this.btnHuyDoAn = new System.Windows.Forms.Button();
            this.btnCapNhatSLSV = new System.Windows.Forms.Button();
            this.btnAbout = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnDangKyDoAn
            // 
            this.btnDangKyDoAn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnDangKyDoAn.Location = new System.Drawing.Point(24, 10);
            this.btnDangKyDoAn.Name = "btnDangKyDoAn";
            this.btnDangKyDoAn.Size = new System.Drawing.Size(61, 70);
            this.btnDangKyDoAn.TabIndex = 0;
            this.btnDangKyDoAn.Text = "Đăng Ký Đồ Án";
            this.btnDangKyDoAn.UseVisualStyleBackColor = true;
            this.btnDangKyDoAn.Click += new System.EventHandler(this.btnDangKyDoAn_Click);
            // 
            // btnCapNhatDoAn
            // 
            this.btnCapNhatDoAn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnCapNhatDoAn.Location = new System.Drawing.Point(91, 10);
            this.btnCapNhatDoAn.Name = "btnCapNhatDoAn";
            this.btnCapNhatDoAn.Size = new System.Drawing.Size(98, 70);
            this.btnCapNhatDoAn.TabIndex = 1;
            this.btnCapNhatDoAn.Text = "Cập Nhật Thời Hạn Nộp Đồ Án";
            this.btnCapNhatDoAn.UseVisualStyleBackColor = true;
            this.btnCapNhatDoAn.Click += new System.EventHandler(this.btnCapNhatDoAn_Click);
            // 
            // btnHuyDoAn
            // 
            this.btnHuyDoAn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnHuyDoAn.Location = new System.Drawing.Point(195, 10);
            this.btnHuyDoAn.Name = "btnHuyDoAn";
            this.btnHuyDoAn.Size = new System.Drawing.Size(61, 70);
            this.btnHuyDoAn.TabIndex = 2;
            this.btnHuyDoAn.Text = "Hủy Đồ Án";
            this.btnHuyDoAn.UseVisualStyleBackColor = true;
            this.btnHuyDoAn.Click += new System.EventHandler(this.btnHuyDoAn_Click);
            // 
            // btnCapNhatSLSV
            // 
            this.btnCapNhatSLSV.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnCapNhatSLSV.Location = new System.Drawing.Point(24, 86);
            this.btnCapNhatSLSV.Name = "btnCapNhatSLSV";
            this.btnCapNhatSLSV.Size = new System.Drawing.Size(232, 48);
            this.btnCapNhatSLSV.TabIndex = 3;
            this.btnCapNhatSLSV.Text = "Cập Nhật Số Lượng Sinh Viên Trong Một Nhóm";
            this.btnCapNhatSLSV.UseVisualStyleBackColor = true;
            this.btnCapNhatSLSV.Click += new System.EventHandler(this.btnCapNhatSLSV_Click);
            // 
            // btnAbout
            // 
            this.btnAbout.Location = new System.Drawing.Point(262, 126);
            this.btnAbout.Name = "btnAbout";
            this.btnAbout.Size = new System.Drawing.Size(17, 23);
            this.btnAbout.TabIndex = 4;
            this.btnAbout.Text = "?";
            this.btnAbout.UseVisualStyleBackColor = true;
            this.btnAbout.Click += new System.EventHandler(this.btnAbout_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(280, 149);
            this.Controls.Add(this.btnAbout);
            this.Controls.Add(this.btnCapNhatSLSV);
            this.Controls.Add(this.btnHuyDoAn);
            this.Controls.Add(this.btnCapNhatDoAn);
            this.Controls.Add(this.btnDangKyDoAn);
            this.Name = "MainForm";
            this.Text = "Project Registration";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCapNhatDoAn;
        private System.Windows.Forms.Button btnHuyDoAn;
        private System.Windows.Forms.Button btnCapNhatSLSV;
        private System.Windows.Forms.Button btnAbout;
        public System.Windows.Forms.Button btnDangKyDoAn;
    }
}

