const express = require('express');
const app = express();
const path = require('path');
const porta = 5000;

// -------------------------------------------------
const indexRota = require("./src/routes/index")


// -------------------------------------------------

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Aqui configura o diretório para "pegar" as páginas html
app.use(express.static(path.join(__dirname, "public")));

// Rotas
app.use("/", indexRota);


app.listen(porta, ()=>{
    console.log(`Servidor rodando em http://localhost:${porta}`)
});