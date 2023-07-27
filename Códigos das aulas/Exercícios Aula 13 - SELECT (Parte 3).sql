/*1)	Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
SELECT profissao, count(profissao) FROM gafanhotos
GROUP BY profissao;

/*2)	Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?*/
SELECT sexo, count(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

/*3)	Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem
 e o total de pessoas nascidas lá. Só nos interessam os países que tiverem 3 ou mais de gafanhotos com essa nacionalidade.*/
SELECT nacionalidade, count(*) FROM gafanhotos
GROUP BY nacionalidade
HAVING nacionalidade != 'Brasil' AND COUNT(nacionalidade) >= 3;

/*4)	Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que 
estão acima da média de altura de todos os cadastrados*/

/*4)	Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e 
que estão acima da média de altura de todos os cadastrados*/
SELECT AVG(altura) FROM gafanhotos;

SELECT altura, count(*) FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);

select count(nome) from gafanhotos
where peso > '100' and altura > (select avg(altura) from gafanhotos);