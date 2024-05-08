-- 1 Query
SELECT 
	Nome, 
	Ano
FROM Filmes

-- 2 Query
SELECT 
	Nome, 
	Ano 
FROM Filmes 
ORDER BY Ano ASC

-- 3 Query
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4 Query
SELECT * FROM Filmes WHERE Ano = 1997

-- 5 Query
SELECT * FROM Filmes WHERE Ano > 2000

-- 6 Query
SELECT 
	* 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC 

-- 7 Query
SELECT 
	Ano, 
	COUNT(*)Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 Query
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM Atores 
WHERE Genero = 'M'

-- 9 Query
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Query
SELECT 
	Nome, 
	Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11 Query 
SELECT 
	Nome, 
	Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério'

-- 12 Query
SELECT 
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A ON A.Id = E.IdAtor