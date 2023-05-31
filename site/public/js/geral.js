function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USER;
    var nome = sessionStorage.NOME_USER;

    if (email != null && nome != null) {
        span_nome_user.innerHTML = nome;
        console.log("Sessão OK :)");

    } 
    else {
        alert(`Faça o login para poder ter acesso a essa página`);
        window.location = "../login.html";
    }
}