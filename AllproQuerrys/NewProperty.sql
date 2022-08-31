USE [AllPro]
GO
/****** Object:  StoredProcedure [dbo].[NewProperty]    Script Date: 25/08/2022 5:25:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[NewProperty](
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
insert into OwnerHouse (ClientID, UserName,PropertyID,TypeHouseID)
values(@ClientID,(Select Username from Client where ClientID=@ClientID)
,(select PropertyID from Propertys where Address=@Address),@TypeHouseID)
end 

