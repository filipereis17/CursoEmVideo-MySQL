SELECT totaulas FROM cursos
ORDER BY totaulas;

SELECT DISTINCT totaulas FROM cursos
ORDER BY totaulas;

SELECT totaulas, count(*) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

SELECT * FROM cursos WHERE totaulas = 30;
SELECT * FROM cursos WHERE totaulas = 12;

SELECT carga, count(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT * FROM cursos WHERE totaulas = 30;

SELECT ano, count(*) FROM cursos
GROUP BY ano
ORDER BY count(*) DESC;

SELECT ano, count(*) FROM cursos
GROUP BY ano
HAVING count(ano) >= 5
ORDER BY count(*) DESC;

-- Erro: Só pode utilizar o HAVING o campo que estiver agrupado
SELECT ano, count(*) FROM cursos
GROUP BY ano
HAVING totaulas > 30
ORDER BY count(*) DESC;

SELECT ano, count(*) FROM cursos
GROUP BY ano
HAVING ano > 2013
ORDER BY count(*) DESC;

SELECT ano, count(*) FROM cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano > 2013
ORDER BY count(*) DESC;

SELECT AVG(carga) FROM cursos;

SELECT carga, count(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);