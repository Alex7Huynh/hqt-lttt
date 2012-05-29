namespace ProjectRegistration
{
    partial class frmDangKyDoAn
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
            this.tbMaDe = new System.Windows.Forms.TextBox();
            this.btDangKy = new System.Windows.Forms.Button();
            this.tbSoNhomDangKy = new System.Windows.Forms.TextBox();
            this.tbSoNhomToiDa = new System.Windows.Forms.TextBox();
            this.cbFixLoi = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbTimeWait = new System.Windows.Forms.TextBox();
            this.lbMessage = new System.Windows.Forms.Label();
            this.lbSinhVien = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 114);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã đề :";
            // 
            // tbMaDe
            // 
            this.tbMaDe.Location = new System.Drawing.Point(110, 109);
            this.tbMaDe.Name = "tbMaDe";
            this.tbMaDe.Size = new System.Drawing.Size(144, 20);
            this.tbMaDe.TabIndex = 1;
            this.tbMaDe.Text = "9";
            // 
            // btDangKy
            // 
            this.btDangKy.Location = new System.Drawing.Point(110, 200);
            this.btDangKy.Name = "btDangKy";
            this.btDangKy.Size = new System.Drawing.Size(82, 27);
            this.btDangKy.TabIndex = 2;
            this.btDangKy.Text = "Đăng ký";
            this.btDangKy.UseVisualStyleBackColor = true;
            this.btDangKy.Click += new System.EventHandler(this.btDangKy_Click);
            // 
            // tbSoNhomDangKy
            // 
            this.tbSoNhomDangKy.Location = new System.Drawing.Point(28, 66);
            this.tbSoNhomDangKy.Name = "tbSoNhomDangKy";
            this.tbSoNhomDangKy.ReadOnly = true;
            this.tbSoNhomDangKy.Size = new System.Drawing.Size(226, 20);
            this.tbSoNhomDangKy.TabIndex = 3;
            // 
            // tbSoNhomToiDa
            // 
            this.tbSoNhomToiDa.Location = new System.Drawing.Point(28, 33);
            this.tbSoNhomToiDa.Name = "tbSoNhomToiDa";
            this.tbSoNhomToiDa.ReadOnly = true;
            this.tbSoNhomToiDa.Size = new System.Drawing.Size(226, 20);
            this.tbSoNhomToiDa.TabIndex = 4;
            // 
            // cbFixLoi
            // 
            this.cbFixLoi.AutoSize = true;
            this.cbFixLoi.Location = new System.Drawing.Point(112, 176);
            this.cbFixLoi.Name = "cbFixLoi";
            this.cbFixLoi.Size = new System.Drawing.Size(80, 17);
            this.cbFixLoi.TabIndex = 6;
            this.cbFixLoi.Text = "Demo fix lỗi";
            this.cbFixLoi.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 144);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Time wait :";
            // 
            // tbTimeWait
            // 
            this.tbTimeWait.Location = new System.Drawing.Point(111, 143);
            this.tbTimeWait.Name = "tbTimeWait";
            this.tbTimeWait.Size = new System.Drawing.Size(143, 20);
            this.tbTimeWait.TabIndex = 8;
            this.tbTimeWait.Text = "00:00:05";
            // 
            // lbMessage
            // 
            this.lbMessage.AutoSize = true;
            this.lbMessage.Location = new System.Drawing.Point(109, 240);
            this.lbMessage.Name = "lbMessage";
            this.lbMessage.Size = new System.Drawing.Size(53, 13);
            this.lbMessage.TabIndex = 9;
            this.lbMessage.Text = "Message:";
            // 
            // lbSinhVien
            // 
            this.lbSinhVien.AutoSize = true;
            this.lbSinhVien.Location = new System.Drawing.Point(29, 7);
            this.lbSinhVien.Name = "lbSinhVien";
            this.lbSinhVien.Size = new System.Drawing.Size(54, 13);
            this.lbSinhVien.TabIndex = 10;
            this.lbSinhVien.Text = "Sinh viên:";
            // 
            // frmDangKyDoAn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.Controls.Add(this.lbSinhVien);
            this.Controls.Add(this.lbMessage);
            this.Controls.Add(this.tbTimeWait);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbFixLoi);
            this.Controls.Add(this.tbSoNhomToiDa);
            this.Controls.Add(this.tbSoNhomDangKy);
            this.Controls.Add(this.btDangKy);
            this.Controls.Add(this.tbMaDe);
            this.Controls.Add(this.label1);
            this.Name = "frmDangKyDoAn";
            this.Text = "frmDangKyDoAn";
            this.Load += new System.EventHandler(this.frmDangKyDoAn_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbMaDe;
        private System.Windows.Forms.Button btDangKy;
        private System.Windows.Forms.TextBox tbSoNhomDangKy;
        private System.Windows.Forms.TextBox tbSoNhomToiDa;
        private System.Windows.Forms.CheckBox cbFixLoi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbTimeWait;
        private System.Windows.Forms.Label lbMessage;
        private System.Windows.Forms.Label lbSinhVien;
    }
}