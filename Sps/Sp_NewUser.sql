Alter procedure NewClient(
@NameClient varchar(50),
@DocumentClient int ,
@PhoneClient int ,
@UserName varchar(30),
@UserPassword varchar(30)
)
as
begin
insert into Client (NameClient,DocumentClient,PhoneClient,UserName,UserPassword,RoleID)
Values (@NameClient,@DocumentClient,@PhoneClient,@UserName,@UserPassword,2);
end
--Exec NewClient 'Admin',000,000,'Admin','Admin123'
--Exec NewClient 'CARLOS',987,456987,'CARLOS/*','calos123'
--Exec NewClient 'Andre',98797987,3126548,'Andres/*','Andres123'
--Exec NewClient 'Juan',4464654,654987,'Juan/*','Juan'