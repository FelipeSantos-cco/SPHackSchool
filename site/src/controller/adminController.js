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

function logar(req, res){
    info("Logar");

    var email = req.body.email_html;
    var senha = req.body.senha_html;

    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está indefinida!");
    } else {

        adminModel.logar(email, senha)
            .then(
                function (resultado) {

                    //console.log(`${resultado.length}`);

                    if (resultado.length == 1) {
                        // console.log(resultado);
                        res.json(resultado[0]);

                    }
                    else if (resultado.length == 0) {
                        res.status(403).send("Email e/ou senha inválido(s)");

                    }
                    else {
                        res.status(403).send("Mais de um usuário com o mesmo login e senha!");

                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);

                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports={
    qtdCurso,
    qtdPlataforma,
    qtdUser,
    topFavoritos,
    logar
}