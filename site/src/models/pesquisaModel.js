const database = require("../db/configBD")

function info(msg) {
    console.log(`[Pesquisa Model] Executando no BD: ${msg}`);
}


function buscar(busca) {
    var query = `SELECT * FROM bdSPHack.tbCurso WHERE nomeCurso LIKE '%${busca}%';`;
    info(query)

    return database.queryBD(query);
}

function buscaPlat(busca) {
    var query = `SELECT * FROM bdSPHack.tbPlataforma WHERE nomePlataforma LIKE '%${busca}%';`;
    info(query)

    return database.queryBD(query);
}

function buscaFavorito(idUser){
    var query = `
    SELECT nomeCurso, tipoValor, urlCurso, urlImgCurso 
        FROM bdSPHack.tbFavoritos as fav 
        INNER JOIN bdSPHack.tbCurso as cur ON fav.fkCurso = cur.idCurso
            WHERE fkUser = ${idUser};`
    
    info(query)

    return database.queryBD(query);

}

module.exports = {
    buscar,
    buscaPlat,
    buscaFavorito
}