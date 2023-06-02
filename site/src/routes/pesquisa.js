const express = require("express");
const rota = express.Router();

const pesquisaController = require("../controller/pesquisaController")

function info(msg){
    console.log(`\n[Pesquisa Rota] Executando: ${msg}`)
}

rota.get("/:busca", (req, res) => {
    info("Buscar cursos");
    pesquisaController.buscar(req, res);
});

rota.get("/noticias", (req, res)=> {
    info("Noticias")
});

rota.get("/buscaPlat/:busca", (req, res) => {
    info("Buscar Plataformas");
    pesquisaController.buscaPlat(req, res);
});

rota.get("/buscaFav/:idUser", (req, res) => {
    info("Favoritos");
    pesquisaController.buscaFavorito(req, res);
});

module.exports = rota;