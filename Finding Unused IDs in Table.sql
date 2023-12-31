create table Employee
(ID int ,
client_id int ,
name varchar(100) ,
Join_Date datetime )

insert into Employee 
values
(1 , 101 , 'Farhad' , '20201211') ,
(2 , 202 , 'Reza' , '20210510' ), 
(3 , 303 , 'Zahra' , '20180706' ),
(6 , 404 , 'Sara' , '20220314' ),
(7 , 505 , 'Rafael' , '20230415' ),
(8 , 606 , 'Elijah' , '20190216' ) , 
(10 , 707 , 'Amir' , '20210609' )

create table ID_numbers(
ID int)

declare @ID_counter int = 1
while @ID_counter <= 10
begin
	insert into ID_numbers
		values(@ID_counter)
	set @ID_counter = @ID_counter + 1
end

select A.ID as all_IDs , B.ID as Employee_IDs
from ID_numbers as A left join Employee as B
on A.ID = B.ID 

select A.ID as all_IDs , B.ID as Unused_IDs
from ID_numbers as A left join Employee as B
on A.ID = B.ID 
where B.ID is null
