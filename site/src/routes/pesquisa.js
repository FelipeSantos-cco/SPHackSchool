const express = require("express");
const rota = express.Router();

const pesquisaController = require("../controller/pesquisaController")

function info(msg){
    console.log(`\n[Pesquisa Rota] Executando: ${msg}`)
}

rota.get("/:busca", (req, res) => {
    info("buscar");
    pesquisaController.buscar(req, res);
});


module.exports = rota;