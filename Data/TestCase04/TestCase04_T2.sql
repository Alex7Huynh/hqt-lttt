--Sinh viên muốn đăng ký đồ án
BEGIN TRAN	
	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
	--Tính toán số nhóm đăng ký đồ án,kiểm tra số nhóm đăng ký hợp lệ,nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
	DECLARE @soNhomDangKy int	
	DECLARE @soLuongDangKy int
	SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
							FROM DOAN da, DE d, DE_SINHVIEN dsv 
							WHERE da.MaDoAn = 9 AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe

	PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
	SELECT @soLuongDangKy = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = 9
	IF(@soNhomDangKy < @soLuongDangKy)
		BEGIN
			INSERT INTO DE_SINHVIEN VALUES(9, '0812009')
		END
		
	--Xuất lại số nhóm đăng ký đồ án
	SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
							FROM DOAN da, DE d, DE_SINHVIEN dsv 
							WHERE da.MaDoAn = 9 AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
	PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
COMMIT TRAN