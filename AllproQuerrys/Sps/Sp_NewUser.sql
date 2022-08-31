alter procedure NewClient(
@NameClient varchar(50),
@BanckClient int ,
@DocumentClient int ,
@PhoneClient int ,
@UserName varchar(30),
@UserPassword int,
@RoleID int)
as
begin
insert into Client (NameClient,BanckClient,DocumentClient,PhoneClient,UserName,UserPassword)
Values (@NameClient,@BanckClient,@DocumentClient,@PhoneClient,@UserName,@UserPassword);
end