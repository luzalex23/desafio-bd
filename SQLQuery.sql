SELECT * FROM Atores
SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero

SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o futuro'

SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Ano > 2000

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao DESC

SELECT
	Ano,
	COUNT(*) QuantidadeFilmesLancados
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmesLancados DESC	


SELECT * FROM Atores WHERE Genero = 'M'


SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome


SELECT
	Filmes.Nome,
	Generos.Genero
FROM 
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)


SELECT 
	Filmes.Nome,
	Generos.Genero
FROM
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Generos.Genero = 'Mist�rio'



SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	((ElencoFilme
	
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id)
INNER JOIN Atores ON ElencoFilme.Id = Atores.Id)
INNER JOIN Generos ON ElencoFilme.IdAtor = Generos.Id