--1
SELECT Nome, Ano FROM Filmes

--2
SELECT * FROM Filmes ORDER BY Ano

--3 
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT * FROM Filmes WHERE Ano = '1997'

--5
SELECT * FROM Filmes WHERE Ano > '2000'

--6
SELECT * FROM Filmes WHERE Duracao >= '100' AND Duracao <= '150' ORDER BY Duracao

--7
SELECT Ano, COUNT(Nome) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Nome,
Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id= FilmesGenero.IdGenero

--11
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id= FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.id