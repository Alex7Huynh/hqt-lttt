namespace ProjectRegistration
{
    partial class Login
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
            this.components = new System.ComponentModel.Container();
            this.tb_dk = new System.Windows.Forms.TextBox();
            this.tb_tendn = new System.Windows.Forms.TextBox();
            this.btn_dn = new System.Windows.Forms.Button();
            this.btn_dong = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.SuspendLayout();
            // 
            // tb_dk
            // 
            this.tb_dk.Location = new System.Drawing.Point(95, 69);
            this.tb_dk.Name = "tb_dk";
            this.tb_dk.PasswordChar = '*';
            this.tb_dk.Size = new System.Drawing.Size(186, 20);
            this.tb_dk.TabIndex = 15;
            this.toolTip1.SetToolTip(this.tb_dk, "Mật khẩu trùng với tên đăng nhập");
            // 
            // tb_tendn
            // 
            this.tb_tendn.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tb_tendn.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.RecentlyUsedList;
            this.tb_tendn.Location = new System.Drawing.Point(94, 39);
            this.tb_tendn.Name = "tb_tendn";
            this.tb_tendn.Size = new System.Drawing.Size(186, 20);
            this.tb_tendn.TabIndex = 14;
            this.tb_tendn.Text = "nvu";
            this.toolTip1.SetToolTip(this.tb_tendn, "0812001 (sinh viên) hoặc lqvu (giáo viên)");
            // 
            // btn_dn
            // 
            this.btn_dn.Location = new System.Drawing.Point(116, 106);
            this.btn_dn.Name = "btn_dn";
            this.btn_dn.Size = new System.Drawing.Size(75, 23);
            this.btn_dn.TabIndex = 13;
            this.btn_dn.Text = "Đăng nhập";
            this.btn_dn.UseVisualStyleBackColor = true;
            this.btn_dn.Click += new System.EventHandler(this.btn_dn_Click);
            // 
            // btn_dong
            // 
            this.btn_dong.Location = new System.Drawing.Point(205, 106);
            this.btn_dong.Name = "btn_dong";
            this.btn_dong.Size = new System.Drawing.Size(75, 23);
            this.btn_dong.TabIndex = 12;
            this.btn_dong.Text = "Đóng";
            this.btn_dong.UseVisualStyleBackColor = true;
            this.btn_dong.Click += new System.EventHandler(this.btn_dong_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 69);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Mật khẩu:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 39);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Tên đăng nhập:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(91, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 20);
            this.label1.TabIndex = 8;
            this.label1.Text = "ĐĂNG NHẬP";
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(309, 149);
            this.Controls.Add(this.tb_dk);
            this.Controls.Add(this.tb_tendn);
            this.Controls.Add(this.btn_dn);
            this.Controls.Add(this.btn_dong);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Login";
            this.Text = "Login";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tb_dk;
        private System.Windows.Forms.TextBox tb_tendn;
        private System.Windows.Forms.Button btn_dn;
        private System.Windows.Forms.Button btn_dong;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}