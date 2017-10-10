<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Virtual</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="login-page">
            <div class="form">
                <form class="login-form" action="GerenciaLogin" method="post">
                    <input type="text" placeholder="Login" name="login"/>
                    <input type="password" placeholder="Senha" name="senha"/>
                    <input type="submit" value="Login" id="btn_login" name="acao"/>
                    <p class="message">Não é registrado? <a href="cadastraCliente.jsp">Crie uma conta</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
