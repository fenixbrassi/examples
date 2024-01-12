-- BEGIN TRANSACTION;
-- COMMIT TRANSACTION;

--Nombre de columna , tipo de dato ( varchar(tamaño), int, etc)  [ opcional: restricciones (constraints, ejemplo: Not null, identity, SERIAL[identity] ) ]
CREATE TABLE Persons (
    PersonId SERIAL NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    PRIMARY KEY (PersonId)
);



insert into persons (FirstName) values ('person1');
insert into persons (FirstName, LastName ) values ('person2' , 'Apellido 2');
insert into persons (FirstName, LastName , Address , city ) values ('person3' , 'Apellido 3' , 'Direccion 3' , 'Ciudad 3');



--Para borrar una tabla
DROP table Persons

--Para vaciar toda una tabla sin borrar la tabla.
TRUNCATE table persons

--Si se desea regresar el contador a un numero especifico.
-- persons_personid_seq : es el nombre del constraint que crea el manejador de base de datos en este caso 
--postgresql crea un contraint con el nombre "Nombre De la tabla" + "El nombre del campo" (personid) + "seq"
-- esto puede cambiar dependiendo del manejador de base de datos (MySql , Oracle , Microsoft sql server, etc)
ALTER SEQUENCE persons_personid_seq RESTART WITH 1;

--Para seleccionar todos los registros de una tabla
select * from persons