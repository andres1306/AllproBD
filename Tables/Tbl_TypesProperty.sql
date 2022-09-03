IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].TypesProperty') AND type in (N'U'))
BEGIN
CREATE TABLE TypesProperty (
	TypePropertyID int IDENTITY(1,1),
    TypePropertyName varchar(10),
    primary key (TypePropertyID)
)
INSERT INTO typesproperty (TypePropertyName) VALUES ('Arrendar');
INSERT INTO typesproperty (TypePropertyName) VALUES ('Vender');
end