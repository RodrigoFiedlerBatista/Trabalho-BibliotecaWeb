<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Cadastro Livro</title>
        <link rel="stylesheet" type="text/css" href="css/cadastra.css">
        <script language="JavaScript" src="js/scripts.js"></script>
        
    </head>
    <body>
        <div class="cadastra-page">
            <div class="form">
                <p>Cadastro de Livro</p>
                    
                <form class="cadastra-form" action="GerenciaLivro" method="post">
                    <input type="text" placeholder="Titulo" name="titulo" required/>
                    <input type="text" placeholder="Autor" name="autor" required/>
                    <input type="text" placeholder="Ano" name="ano" required onkeypress="return SomenteNumero(event)"maxlength="4"/>
                    <input type="text" placeholder="Editora" name="editora" required/>
                    <input type="text" placeholder="Valor" name="valor" required onkeypress="return SomenteNumero(event)"/>
                    
                    <input type="submit" value="Cadastrar" id="btn_cadastrar" name="acao"/>
                    
                </form>
                <p class="message"><a href="login.jsp">Voltar Para Login</a></p>
            </div>
        </div>
    </body>
</html>
