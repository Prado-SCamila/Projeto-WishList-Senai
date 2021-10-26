CREATE DATABASE WishList
GO

USE WishList
GO

CREATE TABLE Usuarios 
(
	idUsuario INT PRIMARY KEY IDENTITY
	,email	  VARCHAR(100) UNIQUE NOT NULL 
	,senha	  VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Desejos
(
	idDesejo		INT PRIMARY KEY IDENTITY
	,idUsuario		INT FOREIGN KEY REFERENCES Usuarios(idUsuario)
	,descricao		VARCHAR(250) NOT NULL
	,dataCriacao	DATE NOT NULL
);
GO