CREATE DATABASE IF NOT EXISTS cars_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE cars_db;
​
CREATE TABLE brand (
        idBrand INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(70) NOT NULL,
        foundedYear SMALLINT(4),
        headquarter VARCHAR(200),
        PRIMARY KEY (idBrand)
);
​
CREATE TABLE  model (
        idModel INT NOT NULL AUTO_INCREMENT,
        idBrand INT NOT NULL,
        modelName VARCHAR(100) NOT NULL,
        generation VARCHAR(100),
        productionYear SMALLINT(4),
        doors TINYINT(3),
        seats TINYINT(3),
        maximumSpeed SMALLINT(4),
        PRIMARY KEY (idModel),
        FOREIGN KEY (idBrand) REFERENCES brand(idBrand) ON DELETE CASCADE
);

INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Volkswagen",1946,"Wolfsburg, Germany");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Audi",1910,"Ingolstadt, Germany");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Fiat",1902,"Turin, Italy");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Opel",1862,"Rüsselsheim, Hesse, Germany");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Nissan Motor Co.",1933,"Nishi-ku, Yokohama, Japan");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Tesla Motors",2003,"Palo Alto, California, U.S.");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Škoda Auto",1895,"Mladá Boleslav, Czech Republic");
INSERT INTO brand (name,foundedYear,headquarter)
VALUES ("Subaru",1953,"Ebisu, Tokyo, Japan");
​
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (1,"Passat","Passat Alltrack (B8)", 2015 ,5 ,5 ,220);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (1,"Touran","Touran II", 2015 ,5 ,7 ,206);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (2,"A4","A4 allroad (B9)", 2016 ,5 ,5 ,231);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (3,"124","124 Spider (2016)",2016 ,2 , 3, 205);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (4,"Meriva B (facelift 2014)","-",2014 ,5 , 5, 198);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (4,"Speedster","-",2003 ,2 , 2, 225);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (5,"Bluebird Sylphy","-",2000 ,4 , 5, 201);
INSERT INTO model (idBrand,modelName,generation, productionYear, doors, seats, maximumSpeed)
VALUES (5,"Bluebird (U14)","14",1998 ,4 , 5, 200);
