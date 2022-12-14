USE [AllPro]
GO
/****** Object:  StoredProcedure [dbo].[BuyHous]    Script Date: 03/09/2022 13:53:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[BuyHous]
(@ClientID int,
@PropertyID int)
as
begin
INSERT into BuyHouse (ClientID,NameClient,OwnerID,ExOwnerID,PropertyID,TypesHouseID ,Price) 
values (@ClientID,
(Select NameClient from Client where ClientID = @ClientID),
(select OwnerID from OwnerHouse where PropertyID=@PropertyID),
(Select ClientID from Propertys where PropertyID=@PropertyID ),@PropertyID,
(Select TypeHouseID from Propertys where PropertyID=@PropertyID),
(Select Price from Propertys where PropertyID=@PropertyID))
end 

begin 
Update OwnerHouse set NameClient=(Select NameClient from Client where ClientID=@ClientID), ClientID=@ClientID where OwnerID=(Select OwnerID where PropertyID=@PropertyID)
end 
begin 
Update Propertys set ClientID=@ClientID where PropertyID=@PropertyID
end 


--Exec BuyHous 7,14