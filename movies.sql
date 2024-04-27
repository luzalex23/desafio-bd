select Nome, Ano from Filmes

select Nome, Ano, Duracao from Filmes ORDER BY Ano asc

select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

select Nome, Ano, Duracao from Filmes where Ano = 1997

select Nome, Ano, Duracao from Filmes where Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao >100 AND Duracao < 150 ORDER BY Duracao asc

SELECT Ano, COUNT(1) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade desc

SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

SELECT * from Atores where Genero = 'M'

SELECT * from Atores where Genero = 'F' Order by PrimeiroNome

SELECT    f.Nome,    g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero= 'Mistério'

SELECT    f.Nome,    a.PrimeiroNome,    a.UltimoNome,    ef.Papel FROM Filmes f INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme INNER JOIN Atores a ON ef.IdAtor = a.Id