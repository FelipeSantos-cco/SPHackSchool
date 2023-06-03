-- ------- USUARIOS
INSERT INTO bdSPHack.tbUser (nomeUser, emailUser, senhaUser)
VALUES ('Felipe Santos', 'felipe.almeida@sptech.school', '12345678')
    , ('Bruna Santana', 'Brubs@gmail.com', '12345678')
    , ('Thiago Mendonça', 'Thigos@gmail.com', '12345678')
    , ('João Bezerra', 'JB@gmail.com', '12345678')
    , ('João Silva', 'joao.silva@gmail.com', 'password123')
    , ('Maria Oliveira', 'maria.oliveira@hotmail.com', 'pass1234')
    , ('Pedro Santos', 'pedro.santos@yahoo.com', 'abcd1234')
    , ('Ana Souza', 'ana.souza@gmail.com', 'qwerty123')
    , ('Lucas Lima', 'lucas.lima@outlook.com', 'password321')
    , ('Mariana Pereira', 'mariana.pereira@gmail.com', 'pass5678')
    , ('Gabriel Fernandes', 'gabriel.fernandes@yahoo.com', 'abcd5678')
    , ('Laura Costa', 'laura.costa@hotmail.com', 'qwerty567')
    , ('Rafael Oliveira', 'rafael.oliveira@gmail.com', 'password987')
    , ('Carolina Santos', 'carolina.santos@outlook.com', 'pass9876')
    , ('Bruno Almeida', 'bruno.almeida@yahoo.com', 'abcd9876')
    , ('Isabela Gomes', 'isabela.gomes@gmail.com', 'qwerty321')
    , ('Thiago Pereira', 'thiago.pereira@hotmail.com', 'password654')
    , ('Amanda Rodrigues', 'amanda.rodrigues@yahoo.com', 'pass6543')
    , ('Gustavo Martins', 'gustavo.martins@gmail.com', 'abcd6543')
    , ('Lívia Ferreira', 'livia.ferreira@outlook.com', 'qwerty987')
    , ('Renato Alves', 'renato.alves@gmail.com', 'password567')
    , ('Camila Silva', 'camila.silva@hotmail.com', 'pass3456')
    , ('Eduardo Pereira', 'eduardo.pereira@yahoo.com', 'abcd3456')
    , ('Juliana Santos', 'juliana.santos@gmail.com', 'qwerty234')
    , ('Felipe Oliveira', 'felipe.oliveira@outlook.com', 'password876')
    , ('Sofia Costa', 'sofia.costa@yahoo.com', 'pass8765')
    , ('Enzo Lima', 'enzo.lima@gmail.com', 'abcd8765')
    , ('Bianca Souza', 'bianca.souza@hotmail.com', 'qwerty654')
    , ('Diego Santos', 'diego.santos@gmail.com', 'password543')
    , ('Fernanda Almeida', 'fernanda.almeida@outlook.com', 'pass5432')
    , ('Guilherme Gomes', 'guilherme.gomes@yahoo.com', 'abcd5432')
    , ('Letícia Martins', 'leticia.martins@gmail.com', 'qwerty876')
    , ('Vitor Ferreira', 'vitor.ferreira@hotmail.com', 'password234')
    , ('Carolina Pereira', 'carolina.pereira@yahoo.com', 'pass2345')
    , ('Rafaela Oliveira', 'rafaela.oliveira@gmail.com', 'abcd2345')
    , ('Lucas Almeida', 'lucas.almeida@outlook.com', 'qwerty765')
    , ('Mariah Costa', 'mariah.costa@yahoo.com', 'password876')
    , ('Gustavo Silva', 'gustavo.silva@gmail.com', 'pass8765')
    , ('Lara Souza', 'lara.souza@hotmail.com', 'abcd8765')
    , ('Daniel Santos', 'daniel.santos@gmail.com', 'qwerty543')
    , ('Manuela Oliveira', 'manuela.oliveira@outlook.com', 'password432')
    , ('Henrique Pereira', 'henrique.pereira@yahoo.com', 'pass4321')
    , ('Natália Fernandes', 'natalia.fernandes@gmail.com', 'abcd7654')
    , ('Thiago Almeida', 'thiago.almeida@hotmail.com', 'qwerty345')
    , ('Carla Lima', 'carla.lima@yahoo.com', 'password6543')
    , ('Vinícius Souza', 'vinicius.souza@gmail.com', 'pass65432')
    , ('Amanda Martins', 'amanda.martins@outlook.com', 'abcd65432')
    , ('Eduarda Gomes', 'eduarda.gomes@yahoo.com', 'qwerty9876')
    , ('Rafael Alves', 'rafael.alves@gmail.com', 'password8765')
    , ('Larissa Silva', 'larissa.silva@hotmail.com', 'pass87654')
    , ('Samuel Oliveira', 'samuel.oliveira@yahoo.com', 'abcd87654')
    , ('Isabela Lima', 'isabela.lima@gmail.com', 'qwerty5432')
    , ('Felipe Santos', 'felipe.santos@outlook.com', 'password4321')
    , ('Bruna Fernandes', 'bruna.fernandes@yahoo.com', 'pass43210');

-- https://www.cursoemvideo.com/
INSERT INTO bdSPHack.tbCurso (fkPlataforma, nomeCurso, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Algoritmo', 'gratuito', 'https://www.cursoemvideo.com/curso/curso-de-algoritmo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/algoritmos-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de PHP Básico', 'gratuito', 'https://www.cursoemvideo.com/curso/php-basico/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/php-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Java Básico', 'gratuito', 'https://www.cursoemvideo.com/curso/java-basico/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/java-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de HTML5', 'gratuito', 'https://www.cursoemvideo.com/curso/html5/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de PHP POO', 'gratuito', 'https://www.cursoemvideo.com/curso/php-poo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/poo-php-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Java POO', 'gratuito', 'https://www.cursoemvideo.com/curso/java-poo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/poo-java-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Word', 'gratuito', 'https://www.cursoemvideo.com/curso/word/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/word-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Photoshop', 'gratuito', 'https://www.cursoemvideo.com/curso/photoshop/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/photoshop-circle.jpg');

SELECT * FROM tbCurso;

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://codeiot.org.br/courses
INSERT INTO bdSPHack.tbCurso (fkPlataforma, nomeCurso, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Objetos inteligentes conectados', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT106+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Aplicativos para dispositivos móveis', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT105+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Programação física com Arduino', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT104+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Introdução à Internet das Coisas', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT101+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Eletrônica: conceitos e componentes básicos', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT103+2021_OC/about', '-1');

SELECT * FROM tbcurso;

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://www.cataline.io/basecamp
INSERT INTO bdSPHack.tbCurso (fkPlataforma, nomeCurso, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Fundamentos da programação', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/15be0dca-00a4-4ba2-9384-4d937657cd5c.svg')
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'HTML & CSS', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/7823deff-3caf-4b8c-9b36-0a65b218eadf.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Lógica de programação', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/704ba41f-b940-4701-9b6b-9cf176e3db14.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Javascript', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/7eb11862-d0f5-4f93-b99a-a35e233db4a3.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'ECMAScript 6+', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/1e00a09c-4a40-4f97-8633-7e826bb800e2.svg');

SELECT * FROM tbCurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://pt.khanacademy.org/computing/computer-programming
INSERT INTO bdSPHack.tbCurso (fkPlataforma, nomeCurso, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 1: Introdução a JavaScript: Desenho & Animação', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/programming.png-e13016-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 2: Introdução a HTML/CSS: criação de páginas Web', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-css', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 3: Introdução a SQL: Consulta e gerenciamento de dados', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/sql', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/databases.png-776f54-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 4: JavaScript Avançado: Jogos & Visualizações', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming-games-visualizations', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/simulations.png-955b92-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 5: JS avançado: Simulações Naturais', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming-natural-simulations', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/simulations.png-955b92-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 6: HTML/JS: tornando páginas web interativas', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-css-js', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 7: HTML/JS: tornando páginas web interativas com jQuery', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-js-jquery', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 8: Conheça o profissional', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/meet-the-computing-professional-unit', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/programming.png-e13016-128c.png');

SELECT * FROM tbCurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://www.ev.org.br/

INSERT INTO bdSPHack.tbCurso (fkPlataforma, nomeCurso, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Fundamentos de Lógica de Programação', 'gratuito', 'https://www.ev.org.br/cursos/fundamentos-de-logica-de-programacao', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Introdução à Programação Orientada a Objetos (POO)', 'gratuito', 'https://www.ev.org.br/cursos/introducao-a-programacao-orientada-a-objetos-poo', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Linguagem de Programação Python - Básico', 'gratuito', 'https://www.ev.org.br/cursos/linguagem-de-programacao-python-basico', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Desenvolvimento Orientado a Objetos Utilizando a Linguagem Python', 'gratuito', 'https://www.ev.org.br/cursos/desenvolvimento-orientado-a-objetos-utilizando-a-linguagem-python', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Criando um Projeto com Interface Gráfica Utilizando a Linguagem Python', 'gratuito', 'https://www.ev.org.br/cursos/criando-um-projeto-com-interface-grafica-utilizando-a-linguagem-python', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Análise de Dados no Power BI', 'gratuito', 'https://www.ev.org.br/cursos/analise-de-dados-no-power-bi', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Introdução à Gestão de Projetos', 'gratuito', 'https://www.ev.org.br/cursos/introducao-a-gestao-de-projetos', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Segurança da Informação', 'gratuito', 'https://www.ev.org.br/trilhas-de-conhecimento/seguranca-da-informacao', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Modelagem de Dados', 'gratuito', 'https://www.ev.org.br/cursos/modelagem-de-dados', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Pensamento Computacional', 'gratuito', 'https://www.ev.org.br/cursos/pensamento-computacional', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Microsoft Excel 2016 - Básico', 'gratuito', 'https://www.ev.org.br/cursos/microsoft-excel-2016-basico', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Microsoft Excel 2016 - Avançado', 'gratuito', 'https://www.ev.org.br/cursos/microsoft-excel-2016-avancado', '-1')
    , (bdSPHack.fn_nomePlat('https://www.ev.org.br/'), 'Office 365', 'gratuito', 'https://www.ev.org.br/trilhas-de-conhecimento/office-365', '-1');

SELECT * FROM tbCurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://www.ev.org.br/');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
SELECT COUNT(idCurso) FROM bdSPHack.tbCurso;
SELECT COUNT(idPlataforma) FROM bdSPHack.tbPlataforma;
-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
-- Teste
SELECT * FROM bdSPHack.tbCurso WHERE nomeCurso LIKE '%HTML%';

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
SHOW TABLES FROM bdSPHack;

SHOW COLUMNS FROM bdSPHack.tbUser;
SHOW COLUMNS FROM bdSPHack.tbCurso;
SHOW COLUMNS FROM bdSPHack.tbFavoritos;
SHOW COLUMNS FROM bdSPHack.tbPlataforma;

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
INSERT INTO bdSPHack.tbFavoritos (fkUser, fkCurso)
VALUES (13, 18)
	, (13, 6)
	, (16, 12)
	, (20, 11)
	, (25, 13)
	, (31, 29)
	, (31, 33)
	, (32, 23)
	, (33, 4)
	, (35, 2)
	, (37, 39)
	, (39, 19)
	, (40, 16)
	, (41, 21)
	, (42, 3)
	, (42, 26)
	, (45, 14)
	, (46, 28)
	, (47, 10)
	, (47, 24)
	, (48, 32)
	, (49, 22)
	, (49, 20)
	, (49, 30)
	, (50, 27)
	, (50, 36)
	, (52, 8)
	, (52, 34)
	, (53, 7)
	, (53, 9)
	, (54, 15)
	, (54, 35)
	, (55, 31)
	, (55, 25)
	, (56, 5)
	, (57, 17)
	, (59, 38)
	, (61, 1)
	, (62, 37);
-- Em um cenário sem erros, os idUser vão de 1 até 55


INSERT INTO bdSPHack.tbFavoritos (fkUser, fkCurso)
VALUES (11, 1)
, (12, 1)
, (13, 1)
, (14, 1)
, (15, 1)
, (17, 1)
, (18, 1)
, (19, 1)
, (20, 1)
, (21, 1)
, (22, 1)
, (23, 1)
, (24, 1)
, (25, 1)
, (26, 1)
, (27, 1)
, (28, 1)
, (29, 1)
, (30, 1)
, (31, 1)
, (32, 1)
, (33, 1)
, (34, 1)
, (35, 1)
, (36, 1)
, (37, 1)
, (38, 1)
, (39, 1)
, (40, 1)
, (41, 1)
, (42, 1)
, (43, 1)
, (44, 1)
, (45, 1)
, (46, 1)
, (47, 1)
, (48, 1)
, (49, 1)
, (50, 1)
, (51, 1)
, (52, 1)
, (53, 1)
, (54, 1)
, (55, 1)
, (56, 1)
, (57, 1)
, (58, 1)
, (59, 1)
, (60, 1);
-- Em um cenário sem erros, os idUser vão de 1 até 55
