USE [AllPro]
GO
/****** Object:  StoredProcedure [dbo].[RentHouse]    Script Date: 25/08/2022 5:12:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[RentHouse] (
@ClientID int ,
@PropertyID int)
as
Insert into HouseRents (ClientID,NameClient,TypeHouseID,PropertyID,Price,OwnerID) 
values (@ClientID,(Select NameClient from Client where ClientID=@ClientID )
,(Select TypeHouseID from Propertys where PropertyID=@PropertyID),@PropertyID
,(Select Price from Propertys where PropertyID=@PropertyID)
,(Select OwnerID from OwnerHouse where PropertyID=@PropertyID))

