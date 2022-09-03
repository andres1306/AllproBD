Create table RolforUsers (
IdRolUsers int identity(1,1),
ClientID int, 
RoleID int,
primary key (IdRolUsers),
foreign key (ClientID) references Client(ClientID),
foreign key (RoleID) references RolUsers(RoleID)
)