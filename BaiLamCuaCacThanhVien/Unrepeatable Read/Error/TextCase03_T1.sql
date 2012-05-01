--1. Chạy các stored procedure
CREATE PROCEDURE CapNhatTenSinhVien
	@MaSinhVien varchar(20),
	@TenSinhVien nvarchar(50)
AS
	UPDATE SINHVIEN SET TenSinhVien=@TenSinhVien
	WHERE MaSinhVien=@MaSinhVien
GO
CREATE PROCEDURE LayThongTinSinhVien
	@MaSinhVien varchar(20)	
AS
	SELECT * FROM SINHVIEN WHERE MaSinhVien LIKE @MaSinhVien
GO

--2. Chạy T_LayThongTinSinhVien
BEGIN TRAN T_LayThongTinSinhVien

EXEC LayThongTinSinhVien '0812001'
WAITFOR DELAY '00:00:05'
EXEC LayThongTinSinhVien '0812001'

COMMIT TRAN T_CapNhatSinhVien