const express = require("express");
const rota = express.Router();
// Controller que essa rota vai indicar:
const userController = require("../controller/userController");

function info(msg){
    console.log(`\n[User Rota] Executando: ${msg}`)
}

// Neste caso: http://localhost:{porta}/user/
// rota.get("/", (req, res) =>{
//     console.log(`\n[Rota] Escreveu não leu o pau comeu!\nEu Tô funcionando e não quero nem saber de mais nada!!`)
// });

rota.get("/listar", (req, res) => {
   info("Listar")
    userController.listar(req, res);
});

rota.post("/logar", (req, res) =>{
    info("Logar")
    userController.logar(req, res);
});

rota.post("/cadastrar", (req, res) => {
    info("Cadastrar");
    userController.cadastrar(req, res);
});

rota.post("/favoritar", (req, res) => {
    info("Favoritar");
    userController.favoritar(req, res);
});


// Exporta a rota 
module.exports = rota;