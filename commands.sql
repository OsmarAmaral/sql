CREATE TABLE Gerente(
nomeGerente varchar(50),
codigoGerente serial primary key
);

CREATE TABLE Empregado(
nomeEmpregado varchar(50) NOT NULL,
ruaEmpregado varchar(50),
cidadeEmpregado varchar(50),
foneEmpregado varchar(50),
codigoGerente serial,
codigoEmpregado serial primary key,
foreign key (codigoGerente) references Gerente(codigoGerente)
);

CREATE TABLE Companhia(
nomeCompanhia varchar(50),
cidadeCompanhia varchar(50) default 'rondonópolis',
codigoCompanhia int primary key
);

CREATE TABLE Trabalha(
salario decimal CHECK(salario>0),
codigoEmpregado serial,
codigoCompanhia int,
primary key(codigoEmpregado , codigoCompanhia),
foreign key (codigoEmpregado) references Empregado(codigoEmpregado),
foreign key(codigoCompanhia) references Companhia(codigoCompanhia)
);