Create Database FunJumpBA
Go

Use FunJumpBA 
Go

Create Table Pais(
	IDPais bigint not null primary key identity(1,1),
	Pais varchar(50) not null
)

Create Table Ciudad(
	IDCiudad bigint not null primary key identity(1,1),
	IDPais bigint not null foreign key references Pais(IDPais),
	Ciudad varchar(50) not null
)

Create Table Direccion(
	IDDireccion bigint not null primary key identity(1,1),
	Calle varchar(100) not null,
	Altura int not null,
	Ciudad bigint not null foreign key references Ciudad(IDCiudad)
)

Create Table Usuario(
	IDUsuario bigint not null primary key identity (1,1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	Dni int not null,
	CorreoElectronico varchar(100) not null,
	FechaNacimiento date not null,
	Direccion bigint not null foreign key references Direccion(IDDireccion)
)
Go