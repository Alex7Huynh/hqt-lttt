--CÁC STORE PROCEDURE GÂY RA LỖI TRANH CHẤP ĐỒNG THÒI
--Stored procedure CapNhatThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án mà giáo viên quản lý
CREATE PROCEDURE usp_CapNhatThoiGianNopDoAn_Error
	@MaGiaoVien  VARCHAR(20),	
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME,
	@WaitingTime VARCHAR(10),
	@KetQua NVARCHAR(100) OUTPUT 	
AS
	BEGIN TRAN
		DECLARE @MaMonHoc NVARCHAR(50)
		SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
		-- Kiểm tra xem giáo viên có quản lý môn này không
		DECLARE @MaGVQuanLy VARCHAR(20)
		SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
		IF(@MaGiaoVien=@MaGVQuanLy)
			BEGIN
				UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
				SET @KetQua = N'Cập nhật thành công'
			END
		ELSE
			BEGIN
				SET @KetQua = N'Giáo viên này không quản lý môn này'
				COMMIT TRAN
				RETURN
			END
		--
		WAITFOR DELAY @WaitingTime
		
		DECLARE @KetThuc DATETIME
		SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
		IF(@ThoiHanNopMoi >@KetThuc)
			BEGIN
				SET @KetQua = N'Thời hạn nộp sau thời hạn kết thức của môn học này'
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO


--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE usp_DangKyDoAn_Error
	@MaSinhVien VARCHAR(20),
	@MaDe INT,
	@WaitingTime VARCHAR(10),
	@ThoiHanNopKQ DATETIME OUTPUT,
	@KetQua NVARCHAR(100) OUTPUT
AS
	BEGIN TRAN	
		--SET TRANSACTION ISOLATION LEVEL REPEATABLE READ		
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
				--Chờ giây để demo lỗi phantom trong truy xuất đồng thời, 
				--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
				WAITFOR DELAY @WaitingTime		
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
				SET @KetQua = N'Đăng ký thành công. Hạn nộp là ' + CAST(@ThoiHanNop AS VARCHAR(12))
			END
		ELSE
			BEGIN
				SET @KetQua = N'Đăng ký thất bại do đã đủ nhóm hoặc đã quá hạn nộp.'
			END
		--Lấy thời hạn nộp
		SET @ThoiHanNopKQ = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
	COMMIT TRAN
GO


--Stored procedure HuyDoAn: được gọi khi sinh viên muốn hủy đồ án
CREATE PROCEDURE usp_HuyDoAn_Error
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		SET TRAN ISOLATION LEVEL READ UNCOMMITTED
		DECLARE @HanNop DATETIME
		SELECT @HanNop=ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
		IF(@HanNop>GETDATE())
			BEGIN
				DELETE FROM DE_SINHVIEN WHERE MaDe=@MaDe and MaSinhVien=@MaSinhVien
				SET @KetQua = 1
			END
		ELSE
			BEGIN
				SET @KetQua = 0
			END
	COMMIT TRAN
GO

--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên trong nhóm
CREATE PROCEDURE usp_CapNhatSoLuongSVNhom_Error
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT,
	@WaitingTime VARCHAR(10),
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SET @MonHoc = (SELECT mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien AND mh.TenMonHoc = @TenMonHoc)
		IF(@MonHoc = @TenMonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán			
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
				--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
				WAITFOR DELAY @WaitingTime
				--Update số lượng sinh viên nhóm
				UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
				SET @Ketqua = @slsv
			END
		ELSE
			BEGIN
				SET @KetQua = -1
			END
	COMMIT TRAN
GO


--CÁC STORED PROCEDURE KHẮC PHỤC LỖI TRANH CHẤP ĐỒNG THỜI

--Stored procedure CapNhatThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án mà giáo viên quản lý
CREATE PROCEDURE usp_CapNhatThoiGianNopDoAn_Fix
	@MaGiaoVien  VARCHAR(20),	
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME,
	@WaitingTime VARCHAR(10),
	@KetQua NVARCHAR(50) OUTPUT 	
AS
	BEGIN TRAN
		DECLARE @MaMonHoc NVARCHAR(50)
		SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
		-- Kiểm tra xem giáo viên có quản lý môn này không
		DECLARE @MaGVQuanLy VARCHAR(20)
		SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
		IF(@MaGiaoVien=@MaGVQuanLy)
			BEGIN
				UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
				SET @KetQua = N'Cập nhật thành công'
			END
		ELSE
			BEGIN
				SET @KetQua = N'Giáo viên này không quản lý môn này'
				COMMIT TRAN
				RETURN
			END
		--
		WAITFOR DELAY @WaitingTime
		
		DECLARE @KetThuc DATETIME
		SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
		IF(@ThoiHanNopMoi >@KetThuc)
			BEGIN
				SET @KetQua = N'Thời hạn nộp sau thời hạn kết thức của môn học này'
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO

--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE usp_DangKyDoAn_Fix
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@WaitingTime VARCHAR(10),
	@ThoiHanNopKQ DATETIME OUTPUT,
	@KetQua NVARCHAR(100) OUTPUT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE		
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
				--Chờ giây để demo lỗi phantom trong truy xuất đồng thời, 
				--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
				WAITFOR DELAY @WaitingTime
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
				SET @KetQua = N'Đăng ký thành công. Hạn nộp là ' + CAST(@ThoiHanNop AS VARCHAR(12))
			END
		ELSE
			BEGIN
				SET @KetQua = N'Đăng ký thất bại do đã đủ nhóm hoặc đã quá hạn nộp.'
			END
		--Lấy thời hạn nộp
		SET @ThoiHanNopKQ = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
	COMMIT TRAN
GO

--Stored procedure HuyDoAn: được gọi khi sinh viên muốn hủy đồ án 
Create PROCEDURE usp_HuyDoAn_Fix
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		SET TRAN ISOLATION LEVEL READ COMMITTED
		DECLARE @HanNop DATETIME
		SELECT @HanNop=ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
		IF(@HanNop>GETDATE())
			BEGIN
				DELETE FROM DE_SINHVIEN WHERE MaDe=@MaDe and MaSinhVien=@MaSinhVien
				SET @KetQua = 1
			END
		ELSE
			BEGIN
				SET @KetQua = 0
			END
	COMMIT TRAN
GO

--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên của nhóm
CREATE PROCEDURE usp_CapNhatSoLuongSVNhom_Fix
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT,
	@WaitingTime VARCHAR(10),
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SET @MonHoc =(SELECT  mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien AND mh.TenMonHoc = @TenMonHoc)
		IF(@TenMonHoc = @MonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán	
				SET TRANSACTION ISOLATION LEVEL serializable	
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WITH (UPDLOCK ) WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
				--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
				WAITFOR DELAY @WaitingTime
				--Update số lượng sinh viên nhóm
				UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
				SET @Ketqua = @slsv
			END
		ELSE
			BEGIN
				SET @KetQua = -1
			END
	COMMIT TRAN
GO

--Các STORE PROCEDURE KHÁC

-- Stored procedure spLogin
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
GO
--stored usp_SoNhomToiDa_SoNhomDaDangKy lấy số nhóm tối đa của 1 đồ án, và số nhóm hiện thời đã đăng ký đồ án đó

CREATE PROCEDURE usp_SoNhomToiDa_SoNhomDaDangKy
	@MaDoAn INT,
	@SoNhomToiDa INT OUTPUT,
	@SoNhomDaDangKy INT OUTPUT
AS
	BEGIN TRAN	
		--Lấy số nhóm tối đa
		DECLARE @soNhomTD int	
		SELECT @soNhomTD = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @MaDoAn
		--Tính toán số nhóm đã đăng ký đồ án
		DECLARE @soNhomDaDK int		
		SELECT @soNhomDaDK = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		
		SET @SoNhomToiDa = @soNhomTD
		SET @SoNhomDaDangKy = @soNhomDaDK
	COMMIT TRAN
GO

-- stored usp_DSMaDeMaSVDaDangKy lấy danh sách mã đề mà 1 sinh viên đã đăng ký
CREATE PROCEDURE usp_DSMaDeSVDaDangKy
	@MaSV VARCHAR(20)
	AS
		SELECT MaDe FROM DE_SINHVIEN WHERE MaSinhVien=@MaSV
	Go

