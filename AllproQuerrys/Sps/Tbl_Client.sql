Create table Client(
ClientID int identity (1,1),
NameClient varchar(50),
BanckClient int,
DocumentClient int,
PhoneClient int,
UserID int,
primary key (ClientID),
foreign key (UserID) references Users(UserID)
);

Insert Into Client(NameClient,BanckClient,DocumentClient,PhoneClient,UserID)
Values('Simon','888999','444555','111888',(Select UserID from Users where UserName='Andres'))
