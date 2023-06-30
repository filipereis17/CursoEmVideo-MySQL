-- Exercícios Aula 12 - SELECT (Parte 2)
USE cadastro;

-- 1)	Uma lista com o nome de todas as gafanhotas
SELECT nome FROM gafanhotos WHERE sexo = 'F' ORDER BY nome;

-- 2)	Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015
SELECT * FROM gafanhotos 
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31' 
ORDER BY nascimento;

-- 3)	Uma lista com o nome de todos os homens que trabalham como Programadores
SELECT nome FROM gafanhotos
WHERE profissao IN ('programador') AND sexo = 'M'
ORDER BY nome;

-- 4)	Uma lista com os dados de todas as mulheres que nasceram no Brasil e 
-- que têm seu nome iniciando com a letra J
SELECT nome FROM gafanhotos
WHERE sexo = 'F' AND nome LIKE 'J%'
ORDER BY nome;

-- 5)	Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, 
-- não nasceram no Brasil e pesam menos de 100 Kg
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%silva%' AND nacionalidade != 'Brasil' AND peso < 100
ORDER BY nome;

-- 6)	Qual é a maior altura entre gafanhotos homens que moram no Brasil?
SELECT max(altura) FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND sexo = 'M';

-- 7)	Qual é a média de peso dos gafanhotos cadastrados?
SELECT AVG(peso) FROM gafanhotos;

-- 8)	Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e 
-- entre 01/Jan/1990 e 31/Dez/2000?
SELECT MIN(peso) FROM gafanhotos
WHERE 	sexo = 'F' AND nacionalidade <> 'Brasil' AND 
		nascimento BETWEEN '1990-01-01' AND '2000-12-31';

-- 9)	Quantas gafanhotos mulheres têm mais de 1.90m de altura?
SELECT count(1) FROM gafanhotos WHERE sexo = 'F' AND altura > '1.90';