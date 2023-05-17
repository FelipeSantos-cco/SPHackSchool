
/*
    Script responsavél por "alimentar" a página

*/


// var vt_curso_titulo = ['Curso de lógica'];
// var vt_curso_Enderecoimg = ['./assets/img/protecao.png'];
// var vt_curso_texto = ['Aqui você vai aprender tudo relacionado a lógica'];
// var vt_curso_link = ['https://www.google.com'];

var curso = {
    titulo: ['Curso de lógica'],
    enderecoImg: ['./assets/img/protecao.png'],
    texto: ['Aqui você vai aprender tudo relacionado a lógica'],
    link: ['https://www.google.com']
}



for(var i = 0; i < curso.titulo.length; i++ ){
    // console.log(`Nome do Curso: ${vt_curso_titulo[i]}`);
    // console.log(`Endereço da imagem: ${vt_curso_Enderecoimg[i]}`);
    // console.log(`Texto: ${vt_curso_texto[i]}`);
    // console.log(`Link da pág: ${vt_curso_link[i]}`);

    div_addCursos.innerHTML += `
    <div class="card">
        <img src="${curso.enderecoImg[i]}">
        <h2>${curso.titulo[i]}</h2>
        <p>${curso.texto[i]}</p>
        <p><a href="${curso.link[i]}">Clique aqui para saber mais!!</a></p>
    </div>
    `;

}