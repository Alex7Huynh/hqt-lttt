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
			--Chờ 5 giây để demo lỗi phantom trong truy xuất đồng thời, 
			--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
			WAITFOR DELAY '00:00:05'		
			INSERT INTO DE_SINHVIEN VALUES(9, '0812007')
		END

	--Xuất lại số nhóm đăng ký đồ án
	SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
							FROM DOAN da, DE d, DE_SINHVIEN dsv 
							WHERE da.MaDoAn = 9 AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
	PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))

COMMIT TRAN