
USE QLDoAn
GO
/*

Có 2 tham số truyền vào là username, password.
Có 1 tham số cần trả về là result:

Xử lý đăng nhập là cho vào 2 thông tin username, password, 
store procedure sẽ trả về trong tham số result là 0, 1, 2.
nếu result trả về 0 là đăng nhập thất bại
nếu result trả về 1 là sinh viên
nếu result trả về 2 là giáo viên

Trong trường hợp trả về 1 hoặc 2 (hay khác 0), có nghĩa là đăng nhập thành công
và ta không cần truy vấn lại MaSinhVien hay MaGiaoVien mà nó cũng chính là username truyền vào

*/

CREATE PROCEDURE spLogin
	@username VARCHAR(20),
	@password VARCHAR(20),
	@result INT OUTPUT
AS
BEGIN
	DECLARE @ketQua INT
	SET @ketQua = 0;

	IF EXISTS(SELECT sv.MaSinhVien FROM SINHVIEN sv WHERE sv.MaSinhVien = @username AND sv.MatKhau = @password)
		BEGIN
			SET @ketQua = 1;
		END
	ELSE IF EXISTS(SELECT gv.MaGiaoVien FROM GIAOVIEN gv WHERE gv.MaGiaoVien = @username AND gv.MatKhau = @password)
		BEGIN
			SET @ketQua = 2;
		END
		
	SET @result = @ketQua
END

--Thử nghiệm ở đây
/*
GO
DECLARE @result INT
EXEC spLogin '0812001', '0812001', @result OUTPUT
--EXEC spLogin 'lqvu', 'lqvu', @result OUTPUT
PRINT(@result);
GO
*/













