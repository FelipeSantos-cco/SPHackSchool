
/*
    Script responsavél por "alimentar" a página

*/


// var vt_curso_titulo = ['Curso de lógica'];
// var vt_curso_Enderecoimg = ['./assets/img/protecao.png'];
// var vt_curso_texto = ['Aqui você vai aprender tudo relacionado a lógica'];
// var vt_curso_link = ['https://www.google.com'];

var curso = {
    titulo: ['Curso de lógica', 'Curso de SQL e NoSQL', 'DNS', 'Curso de SQL e NoSQL', 'Curso de lógica', 'SOCORRO DEUS!'],
    enderecoImg: ['./assets/img/protecao.png', '-1', './assets/img/protecao.png', '-1', './assets/img/protecao.png', '-1'],
    texto: ['Aqui você vai aprender tudo relacionado a lógica', 'Aprenda SQL e NoSQL de forma prática e abrangente!', 'Aqui você vai aprender tudo relacionado a lógica', 'Aprenda SQL e NoSQL de forma prática e abrangente!', 'Aqui você vai aprender tudo relacionado a lógica', 'Aprenda SQL e NoSQL de forma prática e abrangente!'],
    link: ['https://www.google.com', 'https://www.w3schools.com', 'https://www.google.com', 'https://www.w3schools.com', 'https://www.google.com', 'https://www.w3schools.com']
}

var cont_br = 0;

for (var i = 0; i < curso.titulo.length; i++) {
    // console.log(`Nome do Curso: ${vt_curso_titulo[i]}`);
    // console.log(`Endereço da imagem: ${vt_curso_Enderecoimg[i]}`);
    // console.log(`Texto: ${vt_curso_texto[i]}`);
    // console.log(`Link da pág: ${vt_curso_link[i]}`);

    cont_br+= 1;

    // O valor '-1' é atribuido quando não é encontrado img do curso
    if (curso.enderecoImg[i] == '-1') {
        enderecoImg = './assets/sph-gif.gif';
    }
    else {
        enderecoImg = curso.enderecoImg[i];
    }

    div_addCursos.innerHTML += `
    <div class="card">
        <img src="${enderecoImg}">
        <h2>${curso.titulo[i]}</h2>
        <p>${curso.texto[i]}</p>
        <p><a href="${curso.link[i]}">Clique aqui para saber mais!!</a></p>
    </div>
    `;

    // if (cont_br == 3) { 
    //     div_addCursos.innerHTML += `<br>`;
    //     cont_br = 0;
    // }
}