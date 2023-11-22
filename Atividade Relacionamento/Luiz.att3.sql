
CREATE DATABASE DepartamentoRH;


USE DepartamentoRH;

CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);

CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    DepartamentoID INT,
    Nome VARCHAR(255),
    Cargo VARCHAR(255),
    Salario DECIMAL(10, 2),
	FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);



INSERT INTO Departamentos (NomeDepartamento) VALUES
('RH');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Contabilidade');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Vendas');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Tecnologia da Informaça');

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Operacoes');

-- Inserindo Valor na Tabela Funcionário
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Guilherme', 'Gerente', 6000.00, 1);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Leonardo', 'Analista', 4500.00, 2);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Matheus', 'Vendedor', 3500.00, 3);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Ferreira', 'Programador', 5000.00, 4);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES
('Carine', 'Marketeiro', 4000.00, 5);
    

SELECT * FROM Funcionarios;
   
SELECT * FROM Departamentos;


