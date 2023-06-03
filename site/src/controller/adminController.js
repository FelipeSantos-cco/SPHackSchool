var adminModel = require("../models/adminModel")

function info(msg) {
    console.log(`[Admin Controller] Executando: ${msg}`);
}

function qtdCurso(req, res){
    info("Quantidade de Cursos");

    adminModel.qtdCurso()
    .then((resultado) => {

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        }
        else {
            res.status(204).send("Ainda não foi geristrado nenhum curso!")
        }

    }).catch((erro) => {
        console.log(erro);
        console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    }
    );
}

function qtdPlataforma(req, res){
    info("Quantidade de Plataformas");

    adminModel.qtdPlataforma()
    .then((resultado) => {

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        }
        else {
            res.status(204).send("Ainda não foi geristrado nenhuma Plataforma!")
        }

    }).catch((erro) => {
        console.log(erro);
        console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    }
    );

}

function qtdUser(req, res){
    info("Quantidade de usuários");

    adminModel.qtdUser()
    .then((resultado) => {

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        }
        else {
            res.status(204).send("Ainda não foi geristrado nenhum Usuário!")
        }

    }).catch((erro) => {
        console.log(erro);
        console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    }
    );

}

function topFavoritos(req, res){
    info("Top Favoritos");

    adminModel.topFavoritos()
    .then((resultado) => {

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        }
        else {
            res.status(204).send("Ainda não tem um top Favorito :(")
        }

    }).catch((erro) => {
        console.log(erro);
        console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    }
    );
}

module.exports={
    qtdCurso,
    qtdPlataforma,
    qtdUser,
    topFavoritos
}