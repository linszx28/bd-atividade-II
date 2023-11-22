
CREATE DATABASE Blog;

USE Blog;

CREATE TABLE Artigo (
    ArtigoID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Conteudo TEXT,
    DataPublicacao DATE
);


CREATE TABLE Comentario(
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(50),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigo(ArtigoID)
);


INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(1, 'A Magia de Hogwarts', ' Uma magia interresante do mundo', '2023-09-12');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(2, 'A Vingança de Kleber', 'Um homem que procura vingança pela sua mulher', '2023-08-25');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(3, 'A Importância da Superação', 'Superar é sempre importante', '2023-07-14');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(4, 'Desafios da Vida', 'A vida é cheia de desafios, mas é através deles que crescemos e nos fortalecemos.', '2023-06-02');

INSERT INTO Artigo (ArtigoID, Titulo, Conteudo, DataPublicacao) VALUES
(5, 'O Valor da Amizade', 'Amigos são tesouros preciosos em nossas vidas.', '2023-05-18');


INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(1, 1, 'Ferreira', 'As Aventuras de Potter', '2023-04-08');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(2, 2, 'Isabella', 'Eu prefiro o Real', '2022-12-19');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(3, 3, 'Luqueta', 'A prática da leitura', '2023-09-10');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(4, 4, 'Beatriz', 'Os desafios da vida', '2025-07-12');

INSERT INTO Comentario (ComentarioID, ArtigoID, Autor, Texto, DataComentario) VALUES
(5, 5, 'Pedro', 'A amizade é tudo', '2022-12-12');

    
    

 SELECT * FROM Artigo;
 

 SELECT * FROM Comentario;


