const database = require("../db/configBD")

function info(msg) {
    console.log(`[Admin Model] Executando no BD: ${msg}`);
}

function qtdCurso(){
    var query = `SELECT COUNT(idCurso) AS qtdCurso FROM bdSPHack.tbCurso;`;
    info(query)

    return database.queryBD(query);
}

function qtdPlataforma(){
    var query = `SELECT COUNT(idPlataforma) AS qtdPlat FROM bdSPHack.tbPlataforma;`;
    info(query)

    return database.queryBD(query);
}

function qtdUser(){
    var query = `SELECT COUNT(idUser) AS qtdUser FROM bdSPHack.tbUser;`;
    info(query)
    return database.queryBD(query);
}


function topFavoritos(){
    var query = `SELECT cur.*, COUNT(fkCurso) AS qtdFav FROM bdSPHack.tbFavoritos as fav 
	                INNER JOIN bdSPHack.tbCurso as cur ON fav.fkCurso = cur.idCurso
		                GROUP BY fkCurso LIMIT 3;`;
    info(query)

    return database.queryBD(query);
}

function logar(email, senha){
    var query = `SELECT * FROM bdSPHack.tbAdm WHERE loginAdm = '${email}' AND senhAdm = '${senha}';`;
    info(query)

    return database.queryBD(query);
}

module.exports ={
    qtdCurso,
    qtdPlataforma,
    qtdUser,
    topFavoritos,
    logar
}