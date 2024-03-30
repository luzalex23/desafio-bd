--exc 1
select Nome  
     , Ano
from Filmes

--exc 2
select Nome  
     , Ano
	 , Duracao
from Filmes

--exc3
select Nome  
     , Ano
	 , Duracao
from Filmes
where Nome = 'De Volta para o Futuro'

--exc4
select Nome  
     , Ano
	 , Duracao
from Filmes
where ano = 1997

--exc5
select Nome  
     , Ano
	 , Duracao
from Filmes
where ano > 2000

--exc6

select Nome  
     , Ano
	 , Duracao
from Filmes
where Duracao > 100 and Duracao  < 150 

--ex7 
select Ano
	 ,COUNT(Ano)as Quantidade	 
from Filmes
group by Ano
order by Quantidade	 desc

--exc8
select PrimeiroNome
     , UltimoNome
	 , Genero
from Atores
where Genero = 'M'

--ex9 
select PrimeiroNome
     , UltimoNome
	 , Genero
from Atores
where Genero = 'F'

--exc 10
select  Filmes.Nome
     ,  Generos.Genero
from  Filmes
     , FilmesGenero
	 , Generos		
where Filmes.Id = FilmesGenero.IdFilme
and   FilmesGenero.IdGenero = Generos.Id


--exc 11
select  Filmes.Nome
     ,  Generos.Genero
from  Filmes
     , FilmesGenero
	 , Generos		
where Filmes.Id = FilmesGenero.IdFilme
and   FilmesGenero.IdGenero = Generos.Id
and Generos.Genero = 'Mistério'


--exc12
select f.Nome
     , ator.PrimeiroNome
	 , ator.UltimoNome
	 , elenco.Papel
from   Filmes f
     , ElencoFilme elenco
	 , Atores ator
where f.Id = elenco.IdFilme
and   elenco.IdAtor = ator.Id
