<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Editar Livro</title>
        <link rel="stylesheet" type="text/css" href="css/cadastra.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="cadastra-page">
            <div class="form">
                <p>Edição de Livro</p>
                <% 
                Livro livro = new Livro();
                livro = (Livro) request.getAttribute("livro");
                System.out.println("ID da jsp: " +livro.getId());
                %>
                <form class="cadastra-form" action="GerenciaLivro" method="post">
                    
                    <input type="text" disabled="true" value="<%= livro.getId() %>"/>
                    <input type="hidden" value="<%=livro.getId()%>" name="id">
                    <input type="text" placeholder="Titulo" name="titulo" value="<%= livro.getTitulo() %>" required/>
                    <input type="text" placeholder="Autor" name="autor" value="<%= livro.getAutor() %>" required/>
                    <input type="text" placeholder="Ano" name="ano" value="<%= livro.getAno() %>" required onkeypress="return SomenteNumero(event)"maxlength="4"/>
                    <input type="text" placeholder="Editora" name="editora" value="<%= livro.getEditora() %>" required/>
                    <input type="text" placeholder="Valor" name="valor" value="<%= livro.getValor() %>" required onkeypress="return SomenteNumero(event)"/>
                    
                    <input type="submit" value="Salvar" id="btn_cadastrar" name="acao"/>
                    
                </form>
                <p class="message"><a href="login.jsp">Voltar Para Login</a></p>
            </div>
        </div>
    </body>
</html>
