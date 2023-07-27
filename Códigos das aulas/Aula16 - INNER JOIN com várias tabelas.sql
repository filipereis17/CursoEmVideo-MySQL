USE cadastro;

CREATE TABLE gafanhoto_assiste_curso (
	id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT * FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto;

SELECT g.id, g.nome, a.idgafanhoto, idcurso FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto;

SELECT g.nome, idcurso FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
ORDER BY g.nome;

SELECT g.nome, c.nome FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c
ON c.idcurso = a.idcurso
ORDER BY g.nome;