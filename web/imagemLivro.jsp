<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/livros.css">
        <script language="JavaScript" src="js/scripts.js"></script>
        <title>Biblioteca - Livro</title>
    </head>
    <body>
        <div class="cadastra-page">
            <div class="form">
                <p>Cadastro de Livro</p>
                <%
                String url = (String) request.getAttribute("url");
                %>
                    
                <form class="cadastra-form" action="fileUpload" method="post">
                    <img src="<%= url %>" alt="Imagem" style="width: 50px; height: 50px">

                    <input type="file" name="uploadFile" /> <input type="submit" /></form> 
                </form>
                
                <p class="message"><a href="login.jsp">Voltar Para Login</a></p>
            </div>
        </div>
    </body>
</html>
