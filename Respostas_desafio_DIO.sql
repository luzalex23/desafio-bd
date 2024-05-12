
--R1--
SELECT
	Nome,
	Ano
FROM
	dbo.Filmes
	
--R2--
SELECT
	Nome,
	Ano,
	Duracao
FROM
	dbo.Filmes
ORDER BY
	Ano
	
--R3--
SELECT
	Nome,
	Ano,
	Duracao
FROM
	dbo.Filmes
WHERE
	Nome = 'De Volta para o Futuro'
	
--R4--
SELECT
	Nome,
	Ano,
	Duracao
FROM
	dbo.Filmes
WHERE
	Ano = 1997
	
--R5--
SELECT
	Nome,
	Ano,
	Duracao
FROM
	dbo.Filmes
WHERE
	Ano BETWEEN 2001 AND 2009
	
--R6--
SELECT
	Nome,
	Ano,
	Duracao
FROM
	dbo.Filmes
WHERE
	Duracao >= 106
ORDER BY 
	Duracao
	
--R7--
SELECT
	Ano,
	count(Ano) AS Quantidade
FROM
	dbo.Filmes
GROUP BY
	ano
	ORDER BY Quantidade DESC

--R8--
SELECT
	*
FROM
	dbo.Atores
WHERE
	Genero = 'M'
	
--R9--
SELECT
	*
FROM
	dbo.Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome
	
--R10--
SELECT
	f.Nome,
	g.Genero
FROM
	dbo.Filmes f
JOIN FilmesGenero fg 
ON
	f.Id = fg.IdFilme
JOIN Generos g 
ON
	g.Id = fg.IdGenero
	
--R11--
SELECT
	f.Nome,
	g.Genero
FROM
	dbo.Filmes f
JOIN FilmesGenero fg 
ON
	f.Id = fg.IdFilme
JOIN Generos g 
ON
	g.Id = fg.IdGenero
WHERE
	g.Genero = 'Mistério'

--R12--
SELECT
	f.Nome,
	a.PrimeiroNome ,
	a.UltimoNome,
	ef.Papel
FROM
	Filmes f
JOIN ElencoFilme ef 
ON
	f.Id = ef.IdFilme
JOIN Atores a
ON
	a.Id = ef.IdAtor
