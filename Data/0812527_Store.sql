--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE DangKyDoAn_Error
	@MaSinhVien VARCHAR(20),
	@MaDe INT
AS
	BEGIN TRAN
		--Kiểm tra thời gian đăng ký trước thời gian nộp đồ án, nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @ThoiHanNop DATETIME
		SET @ThoiHanNop = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		IF(@ThoiHanNop> GETDATE())
			BEGIN				
				INSERT INTO DE_SINHVIEN VALUES(@MaDe, @MaSinhVien)
			END
		--Chờ 5 giây để demo lỗi unrepeatable read trong truy xuất đồng thời
		WAITFOR DELAY '00:00:05'
		--Xuất thời gian nộp
		SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe
	COMMIT TRAN
GO

--Stored procedure ThayDoiThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án
CREATE PROCEDURE ThayDoiThoiGianNopDoAn_Error
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME	
AS
	BEGIN TRAN
		UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
	COMMIT TRAN
GO

--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE DangKyDoAn_Fix
	@MaSinhVien VARCHAR(20),
	@MaDe INT
AS
	BEGIN TRAN
		SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
		--Kiểm tra thời gian đăng ký trước thời gian nộp đồ án, nếu thỏa sẽ chấp nhận đăng ký và thêm vào CSDL.
		DECLARE @ThoiHanNop DATETIME
		SET @ThoiHanNop = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		IF(@ThoiHanNop> GETDATE())
			BEGIN				
				INSERT INTO DE_SINHVIEN VALUES(@MaDe, @MaSinhVien)
			END
		--Chờ 5 giây để demo lỗi unrepeatable read trong truy xuất đồng thời
		WAITFOR DELAY '00:00:05'
		--Xuất thời gian nộp
		SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe
	COMMIT TRAN
GO

--Stored procedure ThayDoiThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án
CREATE PROCEDURE ThayDoiThoiGianNopDoAn_Fix
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME	
AS
	BEGIN TRAN
		UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
	COMMIT TRAN
GO