var userModel = require("../models/userModel")

function info(msg){
    console.log(`[User Controller] Executando: ${msg}`);
}

function listar(req, res){
    info("Listar");
    
    userModel.listar()
    .then((resultado) => {

        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } 
        else {
            res.status(204).send("Nenhum resultado encontrado!")
        }

    }).catch( (erro) => {
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
        
        userModel.logar(email, senha)
            .then(
                function (resultado) {

                    // console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
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

// Exportando as funções
module.exports = {
    listar,
    logar
}