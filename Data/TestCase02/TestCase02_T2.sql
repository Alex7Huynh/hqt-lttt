--Giao tác hủy đồ án
BEGIN TRAN
	DECLARE @MASV varchar(20)
	SET @MASV='0812001'
	DECLARE @MaDe int
	SET @MaDe=1
	SET TRAN ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @HanNop DATETIME
	SELECT @HanNop=ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
	IF(@HanNop>GETDATE())
		BEGIN
			DELETE FROM DE_SINHVIEN WHERE MaDe=@MaDe and MaSinhVien=@MaSV			
		PRINT N'Hủy đồ án thành công'			
		END
	ELSE
		BEGIN
			PRINT N'Đồ án hết thời hạn nộp và hủy'
		END
COMMIT TRAN
GO

