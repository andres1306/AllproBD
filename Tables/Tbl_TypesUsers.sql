IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].TypesProperty') AND type in (N'U'))
BEGIN
CREATE TABLE TypesUsers(
	RoleID int IDENTITY(1,1),
    RoleName varchar(10),
    primary key (RoleID)
);
INSERT INTO typesusers (RoleName) VALUES ('Admin');
INSERT INTO typesusers (RoleName) VALUES ('User');
INSERT INTO typesusers (RoleName) VALUES ('OwnerHouse');

end