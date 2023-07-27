USE CADASTRO;
SELECT * FROM cursos;
SELECT * FROM gafanhotos;
DESC gafanhotos;
DESC cursos;

/* Exportar backup
	1 - Clicar em Server e em seguida Data Export
    2 - Selecionar banco de dados e tabelas
    3 - Escolher Dump Structure and Data
    3.5 - Marcar Procedure, Events e/ou Triggers, se necessário
    4 - Escolher Export to Self-Contained File
    4.5 - Escolher a pasta de destino
    5 - Marcar Include Create Schema
    6 - Start Export
    7 - Usuário e senha
*/

DROP DATABASE cadastro;

/* Importar backup
	1 - Clicar em Server e em seguida Data import
    3 - Escolher Import to Self-Contained File
    4 - Escolher a pasta e arquivo de backup
    5 - Start Import    
*/