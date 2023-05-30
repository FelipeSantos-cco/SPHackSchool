CREATE DATABASE IF NOT EXISTS bdSPHack;
USE bdSPHack;

CREATE TABLE IF NOT EXISTS tbUser(
    idUser INT PRIMARY KEY AUTO_INCREMENT
    , nomeUser VARCHAR(120) COMMENT 'Nome do usuário'
    , emailUser VARCHAR(120) COMMENT 'E-mail do usuário'
    , senhaUser VARCHAR(32) COMMENT 'Senha do usuário'
) COMMENT 'Dados do usuário' ;

CREATE TABLE IF NOT EXISTS tbPlataforma(
    idPlataforma INT PRIMARY KEY AUTO_INCREMENT
    , nomePlataforma VARCHAR(120) COMMENT 'Nome da Plataforma'
    , descPlataforma TEXT COMMENT 'Descrição da plataforma'
    , urlPlataforma TEXT COMMENT 'URL da Plataforma'
    , urlImgPlataforma TEXT COMMENT 'URL da imagem dessa Plataforma'
) COMMENT 'Dados das plataformas';

CREATE TABLE IF NOT EXISTS tbCurso(
    idCurso INT PRIMARY KEY AUTO_INCREMENT
    , fkPlataforma INT COMMENT 'id da tbPlataforma'
    , FOREIGN KEY (fkPlataforma) REFERENCES tbPlataforma(idPlataforma)
    , nomeCuro VARCHAR(120) COMMENT 'Nome do curso'
    , descCurso TEXT COMMENT 'Descrição do curso'
    , tipoValor VARCHAR(20) CHECK (tipoValor IN ('gratuito', 'pago') ) COMMENT 'Verifica se o curso é pago ou não'
    , urlCurso TEXT COMMENT 'URL da Curso'
    , urlImgCurso TEXT COMMENT 'URL da imagem desse Curso'
) COMMENT 'Dados dos cursos';

CREATE TABLE IF NOT EXISTS tbFavoritos(
    fkUser INT COMMENT 'Id do usuário'
    , fkCurso INT COMMENT 'Id do curso'
    , FOREIGN KEY (fkUser) REFERENCES tbUser(idUser)
    , FOREIGN KEY (fkCurso) REFERENCES tbCurso(idCurso)
    , dataHoraAdd DATETIME COMMENT 'Data e hora de quando foi adicionado aos favoritos do usuário'
    , PRIMARY KEY (fkUser, fkCurso)
);

-- Função para retornar o Id da plataforma com base a url da plataforma
DELIMITER $$
CREATE FUNCTION bdSPHack.fn_nomePlat(linkPlat TEXT) 
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE vId int;

    SET vId = (SELECT idPlataforma FROM bdSPHack.tbPlataforma WHERE urlPlataforma = linkPlat);

    RETURN vId;
END$$
DELIMITER ;

-- Função para retornar o Id do curso com base a url do curso
DELIMITER $$
CREATE FUNCTION bdSPHack.fn_nomeCurso(linkCurso TEXT) 
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE vId int;

    SET vId = (SELECT idCurso FROM bdSPHack.tbCurso WHERE urlCurso = linkCurso);

    RETURN vId;
END$$
DELIMITER ;

-- INSERT INTO tbPlataforma(urlPlataforma)
-- VALUES ('https://guiadeti.com.br/guia/curso-em-video/')
--     , ('https://guiadeti.com.br/guia/code-iot/')
--     , ('https://guiadeti.com.br/guia/cataline/')
--     , ('https://guiadeti.com.br/guia/khan-academy/');
-- SELECT bdSPHack.fn_nomePlat('https://guiadeti.com.br/guia/curso-em-video/') AS idPlataforma;


CREATE USER aluno IDENTIFIED BY 'sptech';
GRANT ALL ON bdSPHack.* TO aluno;

INSERT INTO bdsphack.tbuser (nomeUser, emailUser, senhaUser)
VALUES ('Felipe Santos', 'felipe.almeida@sptech.school', '12345678')
    , ('Bruna Santana', 'Brubs@gmail.com', '12345678')
    , ('Thiago Mendonça', 'Thigos@gmail.com', '12345678')
    , ('João Bezerra', 'JB@gmail.com', '12345678');