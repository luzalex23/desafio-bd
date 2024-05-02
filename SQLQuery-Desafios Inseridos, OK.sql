--Desafio 1
select Nome, Ano from Filmes
--Desafio2
select * from Filmes
order by Ano
--Desafio3
select Nome, Ano, Duracao from Filmes
Where Nome Like '%De Volta para O Futuro'
--Desafio4
select * from Filmes
where Ano = 1997
--Desafio5
select * from Filmes
where Ano > 2000
--Desafio 6
select * from Filmes
where Duracao >100 AND Duracao <150
order by Duracao
--Desafio 7
select Ano, COUNT(Ano) as Quantidade from Filmes
group by Ano
order by Quantidade Desc
--Desafio 8
select * from Atores
where Genero = 'M'
--Desafio 9
select * from Atores
where Genero = 'F'
order by PrimeiroNome
--Desafio10
select Nome,
Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id= FilmesGenero.IdGenero
--Desafio11
select Nome,
Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id= FilmesGenero.IdGenero
where Genero = 'Mistério'
--Desafop12
select Nome, PrimeiroNome, UltimoNome, Papel
from Filmes
inner join  ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
inner join Atores on Atores.Id = ElencoFilme.Id


