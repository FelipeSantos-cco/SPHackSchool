const database = require("../db/configBD")

function info(msg){
    console.log(`[Model] Executando no BD: ${msg}`);
}


function buscar(busca){
    var query = `SELECT * FROM bdsphack.tbcurso WHERE nomeCurso LIKE '%${busca}%';`;
    info(query)
    
    return database.queryBD(query);
}

module.exports ={
    buscar
}