CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Atores (
    Id INT AUTO_INCREMENT NOT NULL,
    PrimeiroNome VARCHAR(20) NULL,
    UltimoNome VARCHAR(20) NULL,
    Genero VARCHAR(1) NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Filmes (
    Id INT AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(50) NULL,
    Ano INT NULL,
    Duracao INT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Generos (
    Id INT AUTO_INCREMENT NOT NULL,
    Genero VARCHAR(20) NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE ElencoFilme (
    Id INT AUTO_INCREMENT NOT NULL,
    IdAtor INT NOT NULL,
    IdFilme INT NULL,
    Papel VARCHAR(30) NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE FilmesGenero (
    Id INT AUTO_INCREMENT NOT NULL,
    IdGenero INT NULL,
    IdFilme INT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

-- Inserção de dados para Atores
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES 
('James', 'Stewart', 'M'),
('Deborah', 'Kerr', 'F'),
('Peter', 'OToole', 'M'),
('Robert', 'DeNiro', 'M'),
('Harrison', 'Ford', 'M'),
('Stephen', 'Baldwin', 'M'),
('Jack', 'Nicholson', 'M'),
('Mark', 'Wahlberg', 'M'),
('Woody', 'Allen', 'M'),
('Claire', 'Danes', 'F'),
('Tim', 'Robbins', 'M'),
('Kevin', 'Spacey', 'M'),
('Kate', 'Winslet', 'F'),
('Robin', 'Williams', 'M'),
('Jon', 'Voight', 'M'),
('Ewan', 'McGregor', 'M'),
('Christian', 'Bale', 'M'),
('Maggie', 'Gyllenhaal', 'F'),
('Dev', 'Patel', 'M'),
('Sigourney', 'Weaver', 'F'),
('David', 'Aston', 'M'),
('Ali', 'Astin', 'F');

-- Inserção de dados para Filmes
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES
('Um Corpo que Cai', 1958, 128),
('Os Inocentes', 1961, 100),
('Lawrence da Arábia', 1962, 216),
('O Franco Atirador', 1978, 183),
('Amadeus', 1984, 160),
('Blade Runner', 1982, 117),
('De Olhos Bem Fechados', 1999, 159),
('Os Suspeitos', 1995, 106),
('Chinatown', 1974, 130),
('Boogie Nights - Prazer Sem Limites', 1997, 155),
('Noivo Neurótico, Noiva Nervosa', 1977, 93),
('Princesa Mononoke', 1997, 134),
('Um Sonho de Liberdade', 1994, 142),
('Beleza Americana', 1999, 122),
('Titanic', 1997, 194),
('Gênio Indomável', 1997, 126),
('Amargo pesadelo', 1972, 109),
('Trainspotting - Sem Limites', 1996, 94),
('O Grande Truque', 2006, 130),
('Donnie Darko', 2001, 113),
('Quem Quer Ser um Milionário?', 2008, 120),
('Aliens, O Resgate', 1986, 137),
('Uma Vida sem Limites', 2004, 118),
('Avatar', 2009, 162),
('Coração Valente', 1995, 178),
('Os Sete Samurais', 1954, 207),
('A Viagem de Chihiro', 2001, 125),
('De Volta para o Futuro', 1985, 116);

-- Inserção de dados para Generos
INSERT INTO Generos (Genero) VALUES
('Ação'),
('Aventura'),
('Animação'),
('Biografia'),
('Comédia'),
('Crime'),
('Drama'),
('Horror'),
('Musical'),
('Mistério'),
('Romance'),
('Suspense'),
('Guerra');

-- Inserção de dados para FilmesGenero
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES
(1, 22),
(2, 17),
(2, 3),
(3, 12),
(5, 11),
(6, 8),
(6, 13),
(7, 26),
(7, 28),
(7, 18),
(7, 21),
(8, 2),
(9, 23),
(10, 7),
(10, 27),
(10, 1),
(11, 14),
(12, 6),
(13, 4);

-- Inserção de dados para ElencoFilme
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES
(1, 1, 'John Scottie Ferguson'),
(2, 2, 'Miss Giddens'),
(3, 3, 'T.E. Lawrence'),
(4, 4, 'Michael'),
(6, 6, 'Rick Deckard'),
(7, 8, 'McManus'),
(9, 10, 'Eddie Adams'),
(10, 11, 'Alvy Singer'),
(11, 12, 'San'),
(12, 13, 'Andy Dufresne'),
(13, 14, 'Lester Burnham'),
(14, 15, 'Rose DeWitt Bukater'),
(15, 16, 'Sean Maguire'),
(16, 17, 'Ed'),
(17, 18, 'Renton'),
(19, 20, 'Elizabeth Darko'),
(20, 21, 'Older Jamal'),
(21, 22, 'Ripley'),
(13, 23, 'Bobby Darin'),
(8, 9, 'J.J. Gittes'),
(18, 19, 'Alfred Borden');

-- 1 Buscar o nome e ano dos filmes.
SELECT Nome, Ano FROM filmes;

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.
SELECT Nome, Ano FROM filmes ORDER BY ano ASC;

-- 3 Buscar pelo filme "De volta para o futuro", trazendo o nome, ano e a duração.
SELECT Nome, Ano, Duracao FROM filmes WHERE Nome = 'De volta para o futuro';

-- 4 Buscar os filmes lançados em 1997.
SELECT Nome, Ano FROM filmes WHERE Ano = 1997;

-- 5 Buscar os filmes lançados APÓS o ano 2000.
SELECT Nome, Ano FROM filmes WHERE Ano > 2000;

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente.
SELECT Nome, duracao FROM filmes WHERE duracao > 100 AND duracao < 150 ORDER BY duracao ASC;

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente.
SELECT Ano, COUNT(*) AS QuantidadeFilmes FROM Filmes GROUP BY Ano ORDER BY QuantidadeFilmes DESC;

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome.
SELECT PrimeiroNome, UltimoNome FROM atores WHERE Genero = 'M';

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome.
SELECT PrimeiroNome, UltimoNome FROM atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 Buscar o nome do filme e o gênero.
SELECT f.Nome, g.Genero FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id;

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério".
SELECT f.Nome, g.Genero FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério';

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel.
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f JOIN ElencoFilme ef ON f.Id = ef.IdFilme JOIN Atores a ON ef.IdAtor = a.Id;
