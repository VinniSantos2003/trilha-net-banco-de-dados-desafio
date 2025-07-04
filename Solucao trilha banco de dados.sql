-- Query 1: Buscar o nome e ano dos filmes
select nome, ano from Filmes

-- Query 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
select nome,ano,duracao from Filmes
order by ano ASC

-- Query: 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from Filmes
where nome like 'de volta para o futuro'

-- Query 4: Buscar os filmes lançados em 1997
select * from Filmes
where ano = 1997

-- Query 5: Buscar os filmes lançados APÓS o ano 2000
select * from Filmes 
where ano > 2000

-- Query 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes
where duracao > 100 and duracao < 150
order by duracao ASC

-- Query 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select  count(*) Quantidade_de_lançamentos , ano from Filmes
group by ano
order by Quantidade_de_lançamentos desc

--Query 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome,UltimoNome,Genero from Atores
where Genero = 'M'

--Query 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome,Genero from Atores
where Genero = 'F'
order by PrimeiroNome asc

--Query 10: Buscar o nome do filme e o gênero
select Filmes.Nome,Generos.Genero from FilmesGenero
inner join Filmes on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id = FilmesGenero.IdGenero

-- Query 11: Buscar o nome do filme e o gênero do tipo "Mistério"
select Filmes.Nome,Generos.Genero  from FilmesGenero
inner join Filmes on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério'
-- Query 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from ElencoFilme
inner join Filmes on Filmes.Id = ElencoFilme.IdFilme
inner join Atores on Atores.Id = ElencoFilme.IdAtor


