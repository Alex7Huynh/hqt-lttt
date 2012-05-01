create procedure usp_HuyDoAn
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

--chạy store
exec usp_HuyDoAn '0812001', '1'

