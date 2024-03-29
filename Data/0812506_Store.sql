--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên của nhóm
CREATE PROCEDURE CapNhatSoLuongSVNhom_Error
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT
AS
	BEGIN TRAN
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SELECT @MonHoc = mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien
		IF(@TenMonHoc = @MonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán			
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
			END
		--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
		WAITFOR DELAY '00:00:05'
		--Update số lượng sinh viên nhóm
		UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
	COMMIT TRAN
GO

--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên của nhóm
CREATE PROCEDURE CapNhatSoLuongSVNhom_Fix
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT
AS
	BEGIN TRAN
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SELECT @MonHoc = mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien
		IF(@TenMonHoc = @MonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán	
				SET TRANSACTION ISOLATION LEVEL REPEATABLE READ		
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WITH (UPDLOCK) WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
			END
		--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
		WAITFOR DELAY '00:00:05'
		--Update số lượng sinh viên nhóm
		UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
	COMMIT TRAN
GO
