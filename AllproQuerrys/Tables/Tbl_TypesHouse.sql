IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].TypesHouse') AND type in (N'U'))
BEGIN
CREATE TABLE TypesHouse (
	TypeHouseID int IDENTITY(1,1),
    TypeHouseName varchar(50),
	primary key (TypeHouseID)
);
INSERT INTO typeshouse (TypeHouseName) VALUES ('Apartaestudio');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Apartamento');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Casa');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Casa Local');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Finca');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Glamping');
INSERT INTO typeshouse (TypeHouseName) VALUES ('Local');
END
