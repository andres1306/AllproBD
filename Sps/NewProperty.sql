USE [AllPro]
GO
/****** Object:  StoredProcedure [dbo].[NewProperty]    Script Date: 25/08/2022 5:25:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Alter procedure [dbo].[NewProperty](
@ClientID int,
@Address varchar(100),
@Location Varchar(20),
@Area varchar(10),
@Num_rooms	int,
@Num_bathrooms int, 	
@Parking  bit,	
@Price int,
@Stratum int, 	
@Image varchar(100),
@TypeHouseID int,
@TypePropertyID int )
as 
begin 
Insert into Propertys (ClientID,Address,Location,Area,Num_rooms,Num_bathrooms,Parking,Price,Stratum,Image,TypeHouseID,TypePropertyID,Condition)
values (@ClientID,@Address,@Location,@Area,@Num_rooms,@Num_bathrooms,@Parking,@Price,@Stratum,@Image,@TypeHouseID,@TypePropertyID,1)
end
begin 
insert into OwnerHouse (ClientID, NameClient,PropertyID,TypeHouseID)
values(@ClientID,(Select NameClient from Client where ClientID=@ClientID)
,(select PropertyID from Propertys where Address=@Address),@TypeHouseID)
end 



--exec NewProperty 6,'Cll44b # 45-87','Robledo Campiña','20M',2,1,0,600000,3,'Image/House2',2,1
--exec NewProperty 7,'Cll14b # 87-14','Prado','50m',4,2,0,250000000,4,'Image/House4',2,2
--exec NewProperty 8,'Cll45b # 87-54','Caldas','80m',5,3,0,1500000,4,'Image/House1',2,2