CREATE DATABASE IF NOT EXISTS gestao_torneios; 
USE gestao_torneios;

CREATE TABLE Equipas ( 
ID_Equipa INT AUTO_INCREMENT PRIMARY KEY, 
Nome_Equipa VARCHAR(100) NOT NULL, 
Data_Criacao DATE NOT NULL 
); 

CREATE TABLE Jogadores ( 
ID_Jogador INT AUTO_INCREMENT PRIMARY KEY, 
Nome VARCHAR(100) NOT NULL, 
Nickname VARCHAR(50) NOT NULL, 
Data_Nascimento DATE NOT NULL, 
ID_Equipa INT NOT NULL, 
FOREIGN KEY (ID_Equipa) REFERENCES Equipas(ID_Equipa) 
); 

CREATE TABLE Torneios ( 
ID_Torneio INT AUTO_INCREMENT PRIMARY KEY, 
Nome VARCHAR(100) NOT NULL, 
Data_Inicio DATE NOT NULL, 
Premio_Monetario DECIMAL(10,2) NOT NULL, 
CHECK (Premio_Monetario >= 0) 
);

CREATE TABLE Participacoes ( 
ID_Equipa INT NOT NULL, 
ID_Torneio INT NOT NULL, 
PRIMARY KEY (ID_Equipa, ID_Torneio), 
FOREIGN KEY (ID_Equipa) REFERENCES Equipas(ID_Equipa), 
FOREIGN KEY (ID_Torneio) REFERENCES Torneios(ID_Torneio) 
); 

INSERT INTO Equipas (ID_Equipa,Nome_Equipa,Data_Criacao) VALUES 
('1','Benfica','2008-06-02'), 
('2','Porto','2006-07-03');

INSERT INTO Jogadores (ID_Jogador, Nome, Nickname, Data_Nascimento, ID_Equipa) VALUES  
('1','Antonio','El Bitcho','1996-06-08',1), 
('2','José','Trave','1987-06-02',2);

INSERT INTO Torneios (ID_Torneio, Nome, Data_Inicio, Premio_Monetario ) VALUES  
('1','Torneio de Aveiro','2026-06-08','50'),
('2','Torneio de Estarreja','2026-12-10','500');

INSERT INTO Participacoes (ID_Torneio,ID_Equipa) VALUES  
('1','1'),
('2','2');



 









