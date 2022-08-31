Create table OwnerHouse (
OwnerID int IDENTITY(1,1),
ClientID int,
UserName Varchar(30),
PropertyID int, 
TypeHouseID int,
primary key (OwnerID),
foreign key (ClientID) references Client(ClientID),
foreign key (PropertyID) references Propertys(PropertyID),
foreign key (TypeHouseID) references TypesHouse(TypeHouseID)
)

insert into OwnerHouse (ClientID,UserName,PropertyID,TypeHouseID)
Values ((Select ClientID from Client WHERE ClientID=2),(Select NameClient from Client where ClientID=2),
 (Select PropertyID from Propertys where PropertyID=2),(Select TypeHouseID from Propertys where PropertyID=2 ))
