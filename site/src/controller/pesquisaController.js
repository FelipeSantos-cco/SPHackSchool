var pesquisaModel = require("../models/pesquisaModel")

function info(msg) {
    console.log(`[Pesquisa Controller] Executando: ${msg}`);
}

function buscar(req, res) {
    info("Buscar");

    var busca = req.params.busca;

    if (busca != "" && busca != undefined) {
        pesquisaModel.buscar(busca).then((resultado) => {

            if (resultado.length > 0) {
                res.status(200).json(resultado);
            }
            else {
                res.status(204).send("Nenhum resultado encontrado!")
            }

        }).catch((erro) => {
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
        );
    }
    else {
        res.status(400).send("Sua busca está vazia ou undefined");
    }
}

module.exports = {
    buscar
}