select
	a.Id,
	a.PrimeiroNome,
	a.UltimoNome,
	a.Genero
from Atores a
  where a.Genero = 'M'