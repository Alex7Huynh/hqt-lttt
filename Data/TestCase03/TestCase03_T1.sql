--Sinh viên muốn đăng ký đồ án
BEGIN TRAN	
	
	DECLARE @maSinhVien VARCHAR(20)
	SET @maSinhVien = '0812008'
	DECLARE @maDe INT
	SET @maDe = 1
	--Tính toán số nhóm đã đăng ký đồ án
	DECLARE @soNhomDaDangKy int	
	DECLARE @soNhomToiDa int
	DECLARE @maDoAn int
	SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
	SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
							FROM DOAN da, DE d, DE_SINHVIEN dsv 
							WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
	PRINT N'Số nhóm đã đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
	SELECT @soNhomToiDa = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
	
	DECLARE @ThoiHanNop DATETIME
	SET @ThoiHanNop = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
	--Kiểm tra số nhóm đã đang ký nhỏ hơn số nhóm đăng ký tối đa và thời gian đăng ký trước thời gian nộp đồ án, nếu thỏa 2 điều kiện sẽ chấp nhận đăng ký và thêm vào CSDL.
	IF(@soNhomDaDangKy < @soNhomToiDa AND @ThoiHanNop> GETDATE())
		BEGIN			
			WAITFOR DELAY '00:00:05'
			INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
			PRINT N'Đăng ký thành công. Hạn nộp là ' + CAST(@ThoiHanNop AS VARCHAR(12))
		END
	ELSE
		BEGIN			
			PRINT N'Đăng ký thất bại do đã đủ nhóm hoặc đã quá hạn nộp.'
		END		
	
	--Xuất thời gian nộp
	SELECT top(1)ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe
	--Xuất lại số nhóm đăng ký đồ án
	SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
							FROM DOAN da, DE d, DE_SINHVIEN dsv 
							WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
	PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
COMMIT TRAN