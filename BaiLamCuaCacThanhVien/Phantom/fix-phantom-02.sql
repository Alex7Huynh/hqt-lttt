
--Transaction 1

create procedure TestCase04_T1
as
begin
	begin tran
	set transaction isolation level serializable
	select * from DE_SINHVIEN
	waitfor delay '00:00:10'
	select * from DE_SINHVIEN
	commit tran
end

--Transaction 2

create procedure TestCase04_T2
as
begin
	begin tran
	insert into DE_SINHVIEN values(6,'0812266')
	commit tran
end