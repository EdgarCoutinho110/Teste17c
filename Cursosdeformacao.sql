CREATE DATABASE IF NOT EXISTS Cursosdeformacao;
USE cursosdeformacao;

CREATE TABLE Formando (
    IdFormando INT AUTO_INCREMENT PRIMARY KEY,
    NomeFormando VARCHAR(100) NOT NULL,
    Nº_de_identificaçao VARCHAR(100),
    Data_de_nascimento DATE
);

CREATE TABLE Turma (
    IdTurma INT AUTO_INCREMENT PRIMARY KEY,
	IdFormando INT,
    DesignaçaoTurma VARCHAR(150) NOT NULL,
    DataCriaçao date,
    FOREIGN KEY (IdFormando) REFERENCES Formando(IdFormando)
);

CREATE TABLE Curso (
IdCurso INT AUTO_INCREMENT PRIMARY KEY,
IdTurma INT,
NomeCurso VARCHAR(100) NOT NULL,
DataDeInicio DATE,
CargaHoraria INT,
FOREIGN KEY (IdTurma) REFERENCES Turma(IdTurma)
);

drop table Turma;

Drop Database Cursosdeformacao








