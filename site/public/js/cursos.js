/*
fetch('/cursos')
  .then(response => response.json())
  .then(cursos => {
    const divAddCursos = document.getElementById('div_addCursos');
    cursos.forEach(curso => {
      const cardDiv = document.createElement('div');
      cardDiv.classList.add('card');

      const img = document.createElement('img');
      img.src = curso.enderecoImg;
      if(img.src == '-1'){
        img.src= './assets/sph-gif.gif';
      }
      cardDiv.appendChild(img);

      const h2 = document.createElement('h2');
      h2.textContent = curso.titulo;
      cardDiv.appendChild(h2);

      const pLink = document.createElement('p');
      const aLink = document.createElement('a');
      aLink.href = curso.link;
      aLink.textContent = 'Clique aqui para saber mais!!';
      pLink.appendChild(aLink);
      cardDiv.appendChild(pLink);

      divAddCursos.appendChild(cardDiv);
    });
  })
  .catch(error => console.error(error));
*/

console.log("cursos.js");