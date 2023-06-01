const express = require('express');
const app = express();
const path = require('path');
const porta = 5001;
const cors = require("cors");

// -------------------------------------------------
const indexRota = require("./src/routes/index");
const userRota = require("./src/routes/user");
const pesquisaRota = require("./src/routes/pesquisa")


// -------------------------------------------------

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
// Aqui configura o diretório para "pegar" as páginas html
app.use(express.static(path.join(__dirname, "public")));
app.use(cors());

// Rotas-----------------------------------
app.use("/", indexRota);
app.use("/user", userRota);
app.use("/pesquisa", pesquisaRota);


app.listen(porta, ()=>{
    console.log(`Servidor rodando em http://localhost:${porta}/`)
});