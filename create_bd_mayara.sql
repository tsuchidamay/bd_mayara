CREATE DATABASE Viagens;

CREATE TABLE Destinos (
id_destino INT AUTO_INCREMENT PRIMARY KEY,
nome_destino VARCHAR(100)
);

CREATE TABLE Clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
email VARCHAR (255),
telefone VARCHAR (20),
data_nascimento DATE
);

CREATE TABLE Pacotes (
id_pacote INT AUTO_INCREMENT PRIMARY KEY,
nome_pacote VARCHAR (100),
preco DECIMAL (10, 2),
id_destino INT,
FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);

CREATE TABLE Reservas (
id_reserva INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_pacote INT,
data_reserva DATE,
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote)
);

CREATE TABLE Hoteis (
id_hotel INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
endereco VARCHAR (100),
telefone VARCHAR (20),
id_destino INT,
FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);

CREATE TABLE Passeios (
id_passeio INT AUTO_INCREMENT PRIMARY KEY,
nome_passeio VARCHAR (255),
descricao TEXT,
preco DECIMAL (10, 2),
id_destino INT,
FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);
