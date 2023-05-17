
var vt_curso_titulo = ['Curso de lógica'];
var vt_curso_Enderecoimg = ['./assets/img/protecao.png'];
var vt_curso_texto = ['Aqui você vai aprender tudo relacionado a lógica'];
var vt_curso_link = ['https://www.google.com'];

for(var i = 0; i < vt_curso_titulo.length; i++ ){
    // console.log(`Nome do Curso: ${vt_curso_titulo[i]}`);
    // console.log(`Endereço da imagem: ${vt_curso_Enderecoimg[i]}`);
    // console.log(`Texto: ${vt_curso_texto[i]}`);
    // console.log(`Link da pág: ${vt_curso_link[i]}`);

    div_addCursos.innerHTML += `
    <div class="card">
        <img src="${vt_curso_Enderecoimg[i]}">
        <h2>${vt_curso_titulo[i]}</h2>
        <p>${vt_curso_texto[i]}</p>
        <p><a href="${vt_curso_link[i]}">Clique aqui para saber mais!!</a></p>
    </div>
    `;

}