
CREATE DATABASE Gerenciamento;


SHOW DATABASES;


USE Gerenciamento;


CREATE TABLE Clientes(
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(30) NOT NULL
);

CREATE TABLE Pedidos(
    PedidoID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);



INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(1, 'Bruno', 'Brunog@gmail.com', '71 98122-6346');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(2, 'Beatriz', 'beatriz@gmail.com', '71 98332-4180');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(3, 'Marcelle', 'Marcelle@gmail.com', '71 99866-4540');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(4, 'Julia', 'julia@gmail.com', '71 98978-2230');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(5, 'Cris', 'cris@gmail.com', '71 98345-2112');



INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(1, '2023-05-21', '102.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(2, '2023-06-09', '95.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(3, '2023-01-13', '75.12');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(4, '2022-06-21', '90.22');
INSERT INTO Pedidos (PedidoID, DataPedido, ValorTotal) VALUES
(5, '2023-11-10', '53.22');


SELECT * FROM Clientes;


SELECT * FROM Pedidos;


DROP TABLE Clientes;

DROP TABLE Pedidos;



