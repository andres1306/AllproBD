Create table OwnerHouse (
OwnerID int IDENTITY(1,1),
ClientID int,
NameClient varchar(50),
PropertyID int, 
TypeHouseID int,
primary key (OwnerID),
foreign key (ClientID) references Client(ClientID),
foreign key (PropertyID) references Propertys(PropertyID),
foreign key (TypeHouseID) references TypesHouse(TypeHouseID)
)
