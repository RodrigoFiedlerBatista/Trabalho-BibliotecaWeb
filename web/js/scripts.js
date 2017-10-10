function chamaAlerta(nome) {
    alert(nome.value);
}
            
function chamaAlerta2() {
    var nome = document.getElementById("inputNome");
    alert(nome.value);
    nome.value = "";
}
            
function somenteLetras(input){
    //var nome = document.getElementById("inputNome");
    var filter = /^([a-zA-Zà-úÀ-Ú]|\s+)+$/;
    if (!filter.test(input.value)) {
        input.value = "";
        input.placeholder = "Campo Inválido";
        input.style.borderColor = "#ff0000";
        //input.focus();
        alert("Digite somente letras!");
        return false;
    } else {
        input.style.borderColor = "#00b300";
        return true;
    }
}

function login(login, senha, form){
    if (login.value === "admin" && senha.value === "admin") {
        alert("Sucesso!");
        form.submit();
    } else {
        alert("Erro!");
        login.value = "";
        senha.value = "";
        return false;
    }
}


// A partir daqui eu não criei os scripts

function myFunction(email) {

        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(email.value) === false) 
        {
        document.getElementById("demo").style.color = "red";
            document.getElementById("demo").innerHTML ="Invalid EMail ->"+ email;
            alert('Invalid Email Address ->'+email);
            return false;
        } else{
        document.getElementById("demo").style.color = "DarkGreen";      
        document.getElementById("demo").innerHTML ="Valid Email ->"+email;
        }

   return true;
}

$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});

function mascara(t, mask) {
    var i = t.value.length;
    var saida = mask.substring(1, 0);
    var texto = mask.substring(i)
    if (texto.substring(0, 1) != saida) {
        t.value += texto.substring(0, 1);
    }
}

function SomenteNumero(e) {
    var tecla = (window.event) ? event.keyCode : e.which;
    if ((tecla > 47 && tecla < 58))
        return true;
    else {
        if (tecla === 8 || tecla === 0)
            return true;
        else
            return false;
    }
}

function validaCampos() {

    if (document.dados.marca.value == "" ||document.dados.modelo.value == "" ){
        alert("Preencha campo Marca e modelo");
        document.dados.marca.focus();
        return false;
    }
    return true;
}    