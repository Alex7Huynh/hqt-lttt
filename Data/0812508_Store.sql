create procedure usp_CapNhatDeadline_Error
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

create procedure usp_HuyDoAn_Error
@MaSinhVien varchar(20),
@MaDe int
as
begin tran
set tran isolation level read uncommitted
declare @HanNop datetime
select @HanNop=ThoiHanNop
from DOAN da, DE d
where da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
if(@HanNop>getdate())
begin
delete from DE_SINHVIEN
where MaDe=@MaDe and MaSinhVien=@MaSinhVien
end
commit tran
go

create procedure usp_CapNhatDeadline_Fix
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

create procedure usp_HuyDoAn_Fix
@MaSinhVien varchar(20),
@MaDe int
as
begin tran
set tran isolation level read committed
declare @HanNop datetime
select @HanNop=ThoiHanNop
from DOAN da, DE d
where da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
if(@HanNop>getdate())
begin
delete from DE_SINHVIEN
where MaDe=@MaDe and MaSinhVien=@MaSinhVien
end
commit tran
go