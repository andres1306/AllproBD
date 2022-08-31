IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].TypesProperty') AND type in (N'U'))
BEGIN
alter TABLE Users (
    UserID int IDENTITY(1,1),
    UserName varchar(30),
    UserPassword varchar(30),
    RoleID int,
    primary key (UserID),
    foreign key (RoleID) references TypesUsers (RoleID)
);

INSERT INTO users (UserName, UserPassword, RoleID) VALUES ('admin','12345', 1);
end