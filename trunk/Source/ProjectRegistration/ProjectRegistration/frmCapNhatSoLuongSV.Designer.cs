namespace ProjectRegistration
{
    partial class frmCapNhatSoLuongSV
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
            this.cbFixLoi = new System.Windows.Forms.CheckBox();
            this.tbTimeWait = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnCapNhat = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTenMonHoc = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.NumberValue = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.NumberValue)).BeginInit();
            this.SuspendLayout();
            // 
            // cbFixLoi
            // 
            this.cbFixLoi.AutoSize = true;
            this.cbFixLoi.Location = new System.Drawing.Point(105, 191);
            this.cbFixLoi.Name = "cbFixLoi";
            this.cbFixLoi.Size = new System.Drawing.Size(80, 17);
            this.cbFixLoi.TabIndex = 21;
            this.cbFixLoi.Text = "Demo fix lỗi";
            this.cbFixLoi.UseVisualStyleBackColor = true;
            // 
            // tbTimeWait
            // 
            this.tbTimeWait.Location = new System.Drawing.Point(193, 160);
            this.tbTimeWait.Name = "tbTimeWait";
            this.tbTimeWait.Size = new System.Drawing.Size(143, 20);
            this.tbTimeWait.TabIndex = 20;
            this.tbTimeWait.Text = "00:00:05";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(102, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(75, 13);
            this.label4.TabIndex = 19;
            this.label4.Text = "Thời gian chờ:";
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.Location = new System.Drawing.Point(105, 224);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(75, 23);
            this.btnCapNhat.TabIndex = 18;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.UseVisualStyleBackColor = true;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(261, 224);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 17;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(102, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Tên môn học:";
            // 
            // txtTenMonHoc
            // 
            this.txtTenMonHoc.Location = new System.Drawing.Point(193, 74);
            this.txtTenMonHoc.Name = "txtTenMonHoc";
            this.txtTenMonHoc.Size = new System.Drawing.Size(143, 20);
            this.txtTenMonHoc.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.ForeColor = System.Drawing.Color.Red;
            this.label1.Location = new System.Drawing.Point(5, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(453, 26);
            this.label1.TabIndex = 12;
            this.label1.Text = "CẬP NHẬT SỐ LƯỢNG SINH VIÊN 1 NHÓM";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(102, 104);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(216, 13);
            this.label5.TabIndex = 23;
            this.label5.Text = "Tăng/giảm số lượng sinh viên nhóm hiện tại:";
            // 
            // NumberValue
            // 
            this.NumberValue.Location = new System.Drawing.Point(193, 127);
            this.NumberValue.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            -2147483648});
            this.NumberValue.Name = "NumberValue";
            this.NumberValue.Size = new System.Drawing.Size(39, 20);
            this.NumberValue.TabIndex = 25;
            // 
            // frmCapNhatSoLuongSV
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(464, 356);
            this.Controls.Add(this.NumberValue);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cbFixLoi);
            this.Controls.Add(this.tbTimeWait);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtTenMonHoc);
            this.Controls.Add(this.label1);
            this.Name = "frmCapNhatSoLuongSV";
            this.Text = "frmCapNhatSoLuongSV";
            this.Load += new System.EventHandler(this.frmCapNhatSoLuongSV_Load);
            ((System.ComponentModel.ISupportInitialize)(this.NumberValue)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbFixLoi;
        private System.Windows.Forms.TextBox tbTimeWait;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnCapNhat;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTenMonHoc;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.NumericUpDown NumberValue;
    }
}