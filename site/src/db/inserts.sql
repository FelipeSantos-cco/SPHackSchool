-- https://www.cursoemvideo.com/
INSERT INTO bdsphack.tbcurso (fkPlataforma, nomeCuro, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Algoritmo', 'gratuito', 'https://www.cursoemvideo.com/curso/curso-de-algoritmo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/algoritmos-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de PHP Básico', 'gratuito', 'https://www.cursoemvideo.com/curso/php-basico/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/php-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Java Básico', 'gratuito', 'https://www.cursoemvideo.com/curso/java-basico/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/java-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de HTML5', 'gratuito', 'https://www.cursoemvideo.com/curso/html5/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de PHP POO', 'gratuito', 'https://www.cursoemvideo.com/curso/php-poo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/poo-php-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Java POO', 'gratuito', 'https://www.cursoemvideo.com/curso/java-poo/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/poo-java-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Word', 'gratuito', 'https://www.cursoemvideo.com/curso/word/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/word-circle.jpg')
    , (bdSPHack.fn_nomePlat('https://www.cursoemvideo.com/'), 'Curso de Photoshop', 'gratuito', 'https://www.cursoemvideo.com/curso/photoshop/', 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/photoshop-circle.jpg');

SELECT * FROM tbcurso;

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://codeiot.org.br/courses
INSERT INTO bdsphack.tbcurso (fkPlataforma, nomeCuro, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Objetos inteligentes conectados', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT106+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Aplicativos para dispositivos móveis', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT105+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Programação física com Arduino', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT104+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Introdução à Internet das Coisas', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT101+2021_OC/about', '-1')
    , (bdSPHack.fn_nomePlat('https://codeiot.org.br/courses'), 'Eletrônica: conceitos e componentes básicos', 'gratuito', 'https://codeiot.org.br/courses/course-v1:LSI-TEC+IOT103+2021_OC/about', '-1');

SELECT * FROM tbcurso;

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://www.cataline.io/basecamp
INSERT INTO bdsphack.tbcurso (fkPlataforma, nomeCuro, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Fundamentos da programação', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/15be0dca-00a4-4ba2-9384-4d937657cd5c.svg')
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'HTML & CSS', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/7823deff-3caf-4b8c-9b36-0a65b218eadf.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Lógica de programação', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/704ba41f-b940-4701-9b6b-9cf176e3db14.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'Javascript', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/7eb11862-d0f5-4f93-b99a-a35e233db4a3.svg') 
    , (bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp'), 'ECMAScript 6+', 'gratuito', 'https://www.cataline.io/basecamp', 'https://cataline.s3-accelerate.amazonaws.com/course-icon/1e00a09c-4a40-4f97-8633-7e826bb800e2.svg');

SELECT * FROM tbcurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://www.cataline.io/basecamp');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://pt.khanacademy.org/computing/computer-programming
INSERT INTO bdsphack.tbcurso (fkPlataforma, nomeCuro, tipoValor, urlCurso, urlImgCurso)
VALUES (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 1: Introdução a JavaScript: Desenho & Animação', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/programming.png-e13016-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 2: Introdução a HTML/CSS: criação de páginas Web', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-css', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 3: Introdução a SQL: Consulta e gerenciamento de dados', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/sql', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/databases.png-776f54-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 4: JavaScript Avançado: Jogos & Visualizações', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming-games-visualizations', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/simulations.png-955b92-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 5: JS avançado: Simulações Naturais', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/programming-natural-simulations', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/simulations.png-955b92-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 6: HTML/JS: tornando páginas web interativas', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-css-js', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 7: HTML/JS: tornando páginas web interativas com jQuery', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/html-js-jquery', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/markup.png-8a1e75-128c.png')
    , (bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming'), 'Unidade 8: Conheça o profissional', 'gratuito', 'https://pt.khanacademy.org/computing/computer-programming/meet-the-computing-professional-unit', 'https://cdn.kastatic.org/genfiles/topic-icons/icons/programming.png-e13016-128c.png');

SELECT * FROM tbcurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://pt.khanacademy.org/computing/computer-programming');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- https://www.ev.org.br/

INSERT INTO bdsphack.tbcurso (fkPlataforma, nomeCuro, tipoValor, urlCurso, urlImgCurso)
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

SELECT * FROM tbcurso WHERE fkPlataforma = bdSPHack.fn_nomePlat('https://www.ev.org.br/');

-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
SELECT COUNT(idCurso) FROM bdsphack.tbcurso;
SELECT COUNT(idPlataforma) FROM bdsphack.tbplataforma;
-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
-- Teste
SELECT * FROM bdsphack.tbcurso WHERE nomeCuro LIKE '%HTML%';