namespace ProjectRegistration
{
    partial class frmCapNhatThoiHan
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaDoAn = new System.Windows.Forms.TextBox();
            this.dtpThoiHanNop = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnCapNhat = new System.Windows.Forms.Button();
            this.tbTimeWait = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbFixLoi = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.ForeColor = System.Drawing.Color.Red;
            this.label1.Location = new System.Drawing.Point(5, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(363, 26);
            this.label1.TabIndex = 0;
            this.label1.Text = "CẬP NHẬT THỜI HẠN NỘP ĐỒ ÁN";
            // 
            // txtMaDoAn
            // 
            this.txtMaDoAn.Location = new System.Drawing.Point(147, 72);
            this.txtMaDoAn.Name = "txtMaDoAn";
            this.txtMaDoAn.Size = new System.Drawing.Size(75, 20);
            this.txtMaDoAn.TabIndex = 1;
            this.txtMaDoAn.Text = "4";
            // 
            // dtpThoiHanNop
            // 
            this.dtpThoiHanNop.Location = new System.Drawing.Point(147, 103);
            this.dtpThoiHanNop.Name = "dtpThoiHanNop";
            this.dtpThoiHanNop.Size = new System.Drawing.Size(200, 20);
            this.dtpThoiHanNop.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(73, 79);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Mã đồ án:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(37, 109);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Thời hạn nộp mới:";
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(272, 215);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 4;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.Location = new System.Drawing.Point(147, 215);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(75, 23);
            this.btnCapNhat.TabIndex = 5;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.UseVisualStyleBackColor = true;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // tbTimeWait
            // 
            this.tbTimeWait.Location = new System.Drawing.Point(146, 135);
            this.tbTimeWait.Name = "tbTimeWait";
            this.tbTimeWait.Size = new System.Drawing.Size(143, 20);
            this.tbTimeWait.TabIndex = 10;
            this.tbTimeWait.Text = "00:00:05";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(54, 142);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(75, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Thời gian chờ:";
            // 
            // cbFixLoi
            // 
            this.cbFixLoi.AutoSize = true;
            this.cbFixLoi.Location = new System.Drawing.Point(147, 172);
            this.cbFixLoi.Name = "cbFixLoi";
            this.cbFixLoi.Size = new System.Drawing.Size(80, 17);
            this.cbFixLoi.TabIndex = 11;
            this.cbFixLoi.Text = "Demo fix lỗi";
            this.cbFixLoi.UseVisualStyleBackColor = true;
            // 
            // frmCapNhatThoiHan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(367, 253);
            this.Controls.Add(this.cbFixLoi);
            this.Controls.Add(this.tbTimeWait);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dtpThoiHanNop);
            this.Controls.Add(this.txtMaDoAn);
            this.Controls.Add(this.label1);
            this.Name = "frmCapNhatThoiHan";
            this.Text = "Cập nhật thời hạn nộp đồ án";
            this.Load += new System.EventHandler(this.frmCapNhatThoiHan_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaDoAn;
        private System.Windows.Forms.DateTimePicker dtpThoiHanNop;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnCapNhat;
        private System.Windows.Forms.TextBox tbTimeWait;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox cbFixLoi;
    }
}