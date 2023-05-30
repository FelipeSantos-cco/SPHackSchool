function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    if (email != null && nome != null) {
        console.log("Sessão OK :)");

    } 
    else {
        alert(`Faça o login para poder ter acesso a essa página`);
        window.location = "../login.html";
    }
}