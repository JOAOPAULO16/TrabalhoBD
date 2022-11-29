CREATE DATABASE PIZZARIA
GO

USE PIZZARIA
GO

CREATE TABLE PIZZA (
ID                  INT                 NOT NULL,
PRIMARY KEY(ID)


)

CREATE TABLE PIZZASALGADA (
ID_PIZZA_SAL        INT                 NOT NULL,
SABOR               VARCHAR(40)         NOT NULL,
BORDA               VARCHAR(20)         NOT NULL,
PREÇO               DECIMAL(7, 2)       NOT NULL
PRIMARY KEY(ID_PIZZA_SAL)
FOREIGN KEY(ID_PIZZA_SAL) REFERENCES PIZZA(ID)
)

CREATE TABLE PIZZADOCE (
ID_PIZZA_DOCE       INT                 NOT NULL,
COBERTURA           VARCHAR(40)         NOT NULL,
BORDA               VARCHAR(20)         NOT NULL,
PREÇO               DECIMAL(7, 2)       NOT NULL
PRIMARY KEY(ID_PIZZA_DOCE)
FOREIGN KEY(ID_PIZZA_DOCE) REFERENCES PIZZA(ID)
)

CREATE TABLE Pagamento (
Id                  INT                NOT NULL,
FormaPagamento      VARCHAR(30)        NOT NULL
PRIMARY KEY(Id)
) 


CREATE TABLE Pix (
Id_pagamento                 INT                 NOT NULL,                       
ChavePix_CPF                 VARCHAR(12)         NOT NULL,
ChavePix_NCelular            VARCHAR(11)         NOT NULL
PRIMARY KEY(Id_pagamento)
FOREIGN KEY(Id_pagamento)   REFERENCES  Pagamento(Id)
)



CREATE TABLE Cartao_de_Credito (
Id_Pagamento                 INT                 NOT NULL,
CVC                          INT                 NOT NULL,
NumeroConta                  INT                 NOT NULL,
Datavalidacao                DATE                NOT NULL
PRIMARY KEY(Id_pagamento)
FOREIGN KEY(Id_pagamento)   REFERENCES  Pagamento(Id)
)

 


CREATE TABLE Funcionario (
Id                  INT                NOT NULL,
Nome                VARCHAR(150)       NOT NULL,
CPF                 CHAR(12)           NOT NULL,
Valor               DECIMAL(7, 2)      NOT NULL
PRIMARY KEY(Id)
)


CREATE TABLE Pessoa (
Codigo              INT                NOT NULL,
Nome                VARCHAR(100)       NOT NULL,
Idade               INT                NOT NULL
PRIMARY KEY(Codigo)
)