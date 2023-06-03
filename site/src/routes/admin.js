const express = require("express");
const rota = express.Router();
const adminController = require("../controller/adminController")

function info(msg){
    console.log(`\n[Admin Rota] Executando: ${msg}`)
}

rota.get("/qtdCurso", (req, res)=> {
    info("Quantidade de cursos");
    adminController.qtdCurso(req, res);
});

rota.get("/qtdPlataforma", (req, res) =>{
    info("Quantidade de Plataformas");
    adminController.qtdPlataforma(req, res);
});

rota.get("/qtdUser", (req, res) => {
    info("Quantidade de Usuários");
    adminController.qtdUser(req, res);
});

rota.get("/topFavoritos", (req, res) =>{
    info("Top Favoritos");
    adminController.topFavoritos(req, res);
});

rota.get("/logar", (req, res)=>{
    info("Logando")
})

module.exports = rota;