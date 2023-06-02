var mysql = require("mysql2");

var configConexao = {
    host: "localhost",
    user: "aluno",
    password: "sptech", // sptech
    database: "bdSPHack",
};

// Trecho de código do Web-data-viz: https://github.com/BandTec/web-data-viz/blob/main/site/src/database/config.js#L46
function queryBD(instrucao) {
    return new Promise(function (resolve, reject) {
        var conexao = mysql.createConnection(configConexao);
        conexao.connect();
        
        conexao.query(instrucao, function (erro, resultados) {
            conexao.end();
            if (erro) {
                reject(erro);
            }
            console.log(resultados);
            resolve(resultados);
        });

        conexao.on('error', function (erro) {
            return ("ERRO NO MySQL WORKBENCH: ", erro.sqlMessage);
        });
    });
}

module.exports = {
    queryBD
}