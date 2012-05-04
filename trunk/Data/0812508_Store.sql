CREATE PROCEDURE usp_CapNhatDeadline_Error
	@Ngay datetime,
	@TenDoAn nvarchar(50),
	@TenMonHoc nvarchar(50)
AS
	BEGIN TRAN
		declare @MaMonHoc varchar(20)
		select @MaMonHoc=MaMonHoc
		from MONHOC
		where TenMonHoc=@TenMonHoc
		--
		update DOAN
		set ThoiHanNop=@Ngay
		where TenDoAn=@TenDoAn and MaMonHoc=@MaMonHoc
		--
		WAITFOR DELAY '00:00:10'
		declare @KetThuc datetime
		select @KetThuc=ThoiGianKetThuc
		from MONHOC 
		where TenMonHoc=@TenMonHoc
		IF(@Ngay>@KetThuc)
			BEGIN
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO

CREATE PROCEDURE usp_HuyDoAn_Error
	@MaSinhVien varchar(20),
	@MaDe int
AS
BEGIN TRAN
	SET TRAN ISOLATION LEVEL READ UNCOMMITTED
	declare @HanNop datetime
	select @HanNop=ThoiHanNop
	from DOAN da, DE d
	where da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
	IF(@HanNop>getdate())
		BEGIN
			delete from DE_SINHVIEN
			where MaDe=@MaDe and MaSinhVien=@MaSinhVien
		END
COMMIT TRAN
GO


CREATE PROCEDURE usp_CapNhatDeadline_Fix
	@Ngay datetime,
	@TenDoAn nvarchar(50),
	@TenMonHoc nvarchar(50)
AS
	BEGIN TRAN
		declare @MaMonHoc varchar(20)
		select @MaMonHoc=MaMonHoc
		from MONHOC
		where TenMonHoc=@TenMonHoc
		--
		update DOAN
		set ThoiHanNop=@Ngay
		where TenDoAn=@TenDoAn and MaMonHoc=@MaMonHoc
		--
		WAITFOR DELAY '00:00:10'
		declare @KetThuc datetime
		select @KetThuc=ThoiGianKetThuc
		from MONHOC 
		where TenMonHoc=@TenMonHoc
		IF(@Ngay>@KetThuc)
			BEGIN
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO

CREATE PROCEDURE usp_HuyDoAn_Error
	@MaSinhVien varchar(20),
	@MaDe int
AS
BEGIN TRAN
	SET TRAN ISOLATION LEVEL READ COMMITTED
	declare @HanNop datetime
	select @HanNop=ThoiHanNop
	from DOAN da, DE d
	where da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
	IF(@HanNop>getdate())
		BEGIN
			delete from DE_SINHVIEN
			where MaDe=@MaDe and MaSinhVien=@MaSinhVien
		END
COMMIT TRAN
GO