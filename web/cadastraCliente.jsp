<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <link rel="stylesheet" type="text/css" href="css/cadastra.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="cadastra-page">
            <div class="form">
                <form class="cadastra-form" action="GerenciaCliente" method="post">
                    <p>Cadastro de Clientes</p>
                    <input type="text" placeholder="Nome" name="nome" required/>
                    <input type="text" placeholder="CPF" name="cpf" required onkeypress="mascara(this, '###.###.###-##'); return SomenteNumero(event)" maxlength="14"/>
                    <input type="text" placeholder="Telefone" name="telefone" required onkeypress="mascara(this, '## #####-####'); return SomenteNumero(event)" maxlength="13"/>
                    <input type="text" placeholder="CEP" name="cep" required onkeypress="mascara(this, '#####-###'); return SomenteNumero(event)" maxlength="9"/>
                    <input type="text" placeholder="Login" name="login" required/>
                    <input type="password" placeholder="Senha" name="senha" required/>
                    <input type="text" placeholder="Email" name="email" required onblur="validaEmail(this);" />
                    <input type="submit" value="Cadastrar" id="btn_cadastrar" name="acao"/>
                    <p class="message"><a href="login.jsp">Voltar Para Login</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
