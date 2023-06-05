function totalCursos(){

    fetch("/admin/qtdCurso").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then(function (resposta) {
                h3_totalCursos.innerHTML = resposta[0].qtdCurso;
            });
        } else {
            console.log('Erro no Adm - Total de Cursos');
        }
    }).catch(function (resposta) {
        console.error(resposta);

    });
}

function totalPlat(){

    fetch("/admin/qtdPlataforma").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then(function (resposta) {
                h2_totalPlataformas.innerHTML = resposta[0].qtdPlat;
            });
        } else {
            console.log('Erro no Adm - Total de Plataformas');
        }
    }).catch(function (resposta) {
        console.error(resposta);

    });
}

function totalUser(){

    fetch("/admin/qtdUser").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then(function (resposta) {
                h2_totalUsers.innerHTML = resposta[0].qtdUser;
            });
        } else {
            console.log('Erro no Adm - Total de Usuários');
        }
    }).catch(function (resposta) {
        console.error(resposta);

    });
}

function topCursos(){
    fetch("/admin/topFavoritos").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then(function (resposta) {
                
                for(let i = 0; i < resposta.length; i++){
                    var curso = resposta[i];

                    var img = curso.urlImgCurso;

                    if (img == '-1') {
                        img = '../assets/sph-gif.gif'
                    }

                    div_resp.innerHTML += `
                        <div class="card" >
                            <p><b>${i+1}° Lugar</b></p>
                            <p>${curso.qtdFav} Favoritos</p>
                            <img src="${img}">
                            <h3>${curso.nomeCurso}</h3>
                            <button onclick="curso.urlCurso" class="ir"> 
                                <a href="${curso.urlCurso}" target="_blank">
                                    Acesse o curso clicando aqui
                                </a>
                            </button>
                        </div>`
                }
            
            });
        } else {
            console.log('Erro no Adm - Top Cursos');
        }
    }).catch(function (resposta) {
        console.error(resposta);

    });
    
}

    
    
function grafico(){
    fetch("/admin/topFavoritos").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then(function (resposta) {
                const ctx = document.getElementById('myChart');
                
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                      labels: [resposta[0].nomeCurso, resposta[1].nomeCurso, resposta[2].nomeCurso],
                      datasets: [{
                        label: '# of Votes',
                        data: [resposta[0].qtdFav, resposta[1].qtdFav, resposta[2].qtdFav],
                        borderWidth: 1
                      }]
                    },
                    options: {
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
                  });


                // for(let i = 0; i < resposta.length; i++){
                //     var curso = resposta[i];

                //     var img = curso.urlImgCurso;

                //     if (img == '-1') {
                //         img = '../assets/sph-gif.gif'
                //     }

                //     div_resp.innerHTML += `
                //         <div class="card" >
                //             <p><b>${i+1}° Lugar</b></p>
                //             <p>${curso.qtdFav} Favoritos</p>
                //             <img src="${img}">
                //             <h3>${curso.nomeCurso}</h3>
                //             <button onclick="curso.urlCurso" class="ir"> 
                //                 <a href="${curso.urlCurso}" target="_blank">
                //                     Acesse o curso clicando aqui
                //                 </a>
                //             </button>
                //         </div>`
                // }
            
            });
        } else {
            console.log('Erro no Adm - Top Cursos');
        }
    }).catch(function (resposta) {
        console.error(resposta);

    });
}

function geral(){
    totalCursos();
    totalPlat();
    totalUser();
    topCursos();
    grafico();
}