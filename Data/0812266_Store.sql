USE QLDoAn
GO
--Stored procedure DangKyDoAn_T1_Error: được gọi khi sinh viên 1 muốn đăng ký đồ án
CREATE PROCEDURE DangKyDoAn_T1_Error
	@maSinhVien VARCHAR(20),
	@maDe INT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
		--Tính toán số nhóm đăng ký đồ án,kiểm tra số nhóm đăng ký hợp lệ,nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @soNhomDangKy int	
		DECLARE @soLuongDangKy int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
		SELECT @soLuongDangKy = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		IF(@soNhomDangKy < @soLuongDangKy)
			BEGIN		
		--Chờ 5 giây để demo lỗi phantom trong truy xuất đồng thời, 
		--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
		WAITFOR DELAY '00:00:05'		
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
			END

		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
	COMMIT TRAN
GO

--Stored procedure DangKyDoAn_T2_Error: được gọi khi sinh viên 2 muốn đăng ký đồ án

CREATE PROCEDURE DangKyDoAn_T2_Error
	@maSinhVien VARCHAR(20),
	@maDe INT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
		--Tính toán số nhóm đăng ký đồ án,kiểm tra số nhóm đăng ký hợp lệ,nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @soNhomDangKy int	
		DECLARE @soLuongDangKy int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
		SELECT @soLuongDangKy = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		IF(@soNhomDangKy < @soLuongDangKy)
			BEGIN				
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
			END

		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
	COMMIT TRAN
GO


--Stored procedure DangKyDoAn_T1_Fix: được gọi khi sinh viên 1 muốn đăng ký đồ án
CREATE PROCEDURE DangKyDoAn_T1_Fix
	@maSinhVien VARCHAR(20),
	@maDe INT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		--Tính toán số nhóm đăng ký đồ án,kiểm tra số nhóm đăng ký hợp lệ,nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @soNhomDangKy int	
		DECLARE @soLuongDangKy int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
		SELECT @soLuongDangKy = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		IF(@soNhomDangKy < @soLuongDangKy)
			BEGIN		
		--Chờ 5 giây để demo lỗi phantom trong truy xuất đồng thời, 
		--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
		WAITFOR DELAY '00:00:05'		
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
			END

		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
	COMMIT TRAN
GO

--Stored procedure DangKyDoAn_T2_Fix: được gọi khi sinh viên 2 muốn đăng ký đồ án

CREATE PROCEDURE DangKyDoAn_T2_Fix
	@maSinhVien VARCHAR(20),
	@maDe INT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
		--Tính toán số nhóm đăng ký đồ án,kiểm tra số nhóm đăng ký hợp lệ,nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @soNhomDangKy int	
		DECLARE @soLuongDangKy int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
		SELECT @soLuongDangKy = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		IF(@soNhomDangKy < @soLuongDangKy)
			BEGIN			
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
			END

		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDangKy AS VARCHAR(12))
	COMMIT TRAN
GO
