CREATE DATABASE dbTeste_cursos;
USE dbTeste_cursos;
-- DROP DATABASE dbTeste_cursos;

CREATE TABLE IF NOT EXISTS tbCurso(
    id INT PRIMARY KEY AUTO_INCREMENT
    , titulo TEXT
    , enderecoImg TEXT
    , linkCurso TEXT
);

DROP TABLE tbCurso;

INSERT INTO tbCurso(titulo, enderecoImg, linkCurso)
VALUES ('Curso de Banco de Dados', 'https://www.ecursosonlinegratis.com.br/imagemCursosN/30.jpg', 'https://www.google.com/')
    , ('Python', 'https://blog.geekhunter.com.br/wp-content/uploads/2022/02/linguagem-python-1024x579-1.jpg', 'https://blog.geekhunter.com.br/')
    , ('Curso de GIT', 'https://www.cursoemvideo.com/wp-content/uploads/2020/04/git-1.png', 'https://www.cursoemvideo.com/')
    , ('Aprenda nodeJS', './assets/sph-gif.gif', 'https://developer.mozilla.org/en-US/docs/Web/API/Node')
    , ('Curso X', './assets/sph-gif.gif', 'https://www.google.com/')
    , ('Curso de Lógica', 'https://static.mundoeducacao.uol.com.br/mundoeducacao/2019/10/logica.jpg', 'https://mundoeducacao.uol.com.br');
