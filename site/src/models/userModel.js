// A conexão com o banco de dados
const database = require("../db/configBD")

// Local
function info(msg){
    console.log(`[Model] Executando no BD: ${msg}`);
}

// Export ----
function listar(){
    var query = `SELECT * FROM bdsphack.tbUser`;
    info(query)
    return database.queryBD(query);
}

function logar(email, senha){
    var query = `SELECT * FROM bdsphack.tbUser WHERE emailUser = '${email}' AND senhaUser = '${senha}'`;
    info(query)
    return database.queryBD(query);
}


module.exports = {
    listar,
    logar
};