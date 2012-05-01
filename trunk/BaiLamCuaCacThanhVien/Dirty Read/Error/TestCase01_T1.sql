create procedure usp_CapNhatDeadline
@Ngay datetime,
@TenDoAn nvarchar(50),
@TenMonHoc nvarchar(50)
as
begin tran
declare @MaMonHoc varchar(20)
select @MaMonHoc=MaMonHoc
from MONHOC
where TenMonhoc=@TenMonHoc
--
update DOAN
set ThoiHanNop=@Ngay
where TenDoAn=@TenDoAn and MaMonHoc=@MaMonHoc
--
waitfor delay '00:00:10'
declare @KetThuc datetime
select @KetThuc=ThoiGianKetThuc
from MONHOC 
where TenMonHoc=@TenMonHoc
if(@Ngay>@KetThuc)
begin
rollback tran
return
end
commit tran
go

--chạy store
exec usp_CapNhatDeadline '08/07/2012', N'Đăng ký đồ án môn học', N'Hệ quản trị CSDL'
