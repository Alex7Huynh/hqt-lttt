--Giáo viên muốn thay đổi thời gian nộp của một đồ án
BEGIN TRAN
	DECLARE @MaGiaoVien  VARCHAR(20)
	SET @MaGiaoVien = 'tnhduc'
	DECLARE @MaDoAn INT
	SET @MaDoAn = 2
	DECLARE @ThoiHanNopMoi DATETIME
	SET @ThoiHanNopMoi = '07/29/2012'
	
	DECLARE @MaMonHoc NVARCHAR(50)
	SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
	-- Kiểm tra xem giáo viên có quản lý môn này không
	DECLARE @MaGVQuanLy VARCHAR(20)
	SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
	IF(@MaGiaoVien=@MaGVQuanLy)
		BEGIN
			UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
			PRINT N'Cập nhật thành công'
		END
	ELSE
		BEGIN
			PRINT N'Giáo viên này không quản lý môn này'
			COMMIT TRAN
			RETURN
		END
		
	DECLARE @KetThuc DATETIME
	SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
	IF(@ThoiHanNopMoi >@KetThuc)
		BEGIN
			PRINT N'Thời hạn nộp sau thời hạn kết thức của môn học này'
			ROLLBACK TRAN
			RETURN
		END
COMMIT TRAN