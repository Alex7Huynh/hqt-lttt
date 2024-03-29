-- Cập nhật thời hạn nộp của đồ án
BEGIN TRAN
		DECLARE @MaGiaoVien varchar(20)
		SET @MaGiaoVien = 'tnhduc'
		DECLARE @MaDoAn INT
		SET @MaDoAn=2
		DECLARE @ThoiHanNopMoi DATETIME
		SET @ThoiHanNopMoi='08/07/2012'
		DECLARE @MaMonHoc NVARCHAR(50)
		SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
		-- Kiểm tra xem giáo viên có quản lý môn này không
		DECLARE @MaGVQuanLy VARCHAR(20)
		SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
		IF(@MaGiaoVien=@MaGVQuanLy)
			BEGIN
				UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
				
			END
		ELSE
			BEGIN
				PRINT N'Giáo viên này không quản lý môn này'
				COMMIT TRAN
				RETURN
			END
		--
		WAITFOR DELAY '00:00:05'
		
		DECLARE @KetThuc DATETIME
		SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
		IF(@ThoiHanNopMoi >@KetThuc)
			BEGIN
				PRINT N'Thời hạn nộp sau thời hạn kết thức của môn học này'
				ROLLBACK TRAN
				RETURN
			END
		PRINT N'Cập nhật thành công'
COMMIT TRAN