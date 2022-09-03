
CREATE TABLE Propertys (
	PropertyID int IDENTITY(1,1),
    Address varchar(100),
    Location varchar(20),
    Area varchar(10),
    Num_rooms varchar(2),
    Num_bathrooms varchar(2),	
    Parking bit ,
    Price varchar(100),
    Stratum  varchar(2),
    Image varchar(100),
    ClientID int,
    TypeHouseID int,
	TypePropertyID int,
	primary key (PropertyID),
    foreign key (ClientID) references Client (ClientID),
	foreign key (TypeHouseID) references TypesHouse (TypeHouseID),
    foreign key (TypePropertyID) references TypesProperty (TypePropertyID)
);

Insert into Propertys (Address,Location,Area,Num_rooms,Num_bathrooms,Parking,Price,Stratum,Image)
values ('Poblado','Cll 65B 45-87','80m',4,4,1,235000000,6,'Imasfe/house4')

Insert into Propertys (Address,Location,Area,Num_rooms,Num_bathrooms,Parking,Price,Stratum,Image)
values ('Miramar','cll45a 584-87','72M',2,2,0,1200000,4,'Imasfe/house2')