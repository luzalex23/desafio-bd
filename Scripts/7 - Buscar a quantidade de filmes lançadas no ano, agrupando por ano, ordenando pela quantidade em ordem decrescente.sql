select f.Ano, 
	   count(f.ano) "Quantidade" 
from Filmes f 
  group by f.Ano 
  order by "Quantidade" desc