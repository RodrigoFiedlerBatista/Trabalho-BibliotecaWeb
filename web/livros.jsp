<%@page import="model.Livro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Livros</title>
        <link rel="stylesheet" type="text/css" href="css/livros.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <% LivroDAO dao = new LivroDAO(); 
        Livro.setLivros(dao.consulta());%>
        <div class="table">
            <table border="">
                <tr>
                    <td colspan="6" align="center">
                        Livros
                    </td>
                </tr>
                <tr>
                    <td>
                        Titulo
                    </td>
                    <td>
                        Autor
                    </td>
                    <td>
                        Ano
                    </td>
                    <td>
                        Editora
                    </td>
                    <td>
                        Valor
                    </td>
                    <td>
                        Capa
                    </td>
                </tr>
                <% 
                for (int i = 0; i < Livro.getLivros().size(); i++) {
                %>    
                <tr>
                    <td>
                        <%= Livro.getLivros().get(i).getTitulo()%>
                    </td>
                    <td>
                        <%= Livro.getLivros().get(i).getAutor()%>
                    </td>
                    <td>
                        <%= Livro.getLivros().get(i).getAno()%>
                    </td>
                    <td>
                        <%= Livro.getLivros().get(i).getEditora()%>
                    </td>
                    <td>
                        <%= Livro.getLivros().get(i).getValor()%>
                    </td>
                    <td>
                        <img src="<%=Livro.getLivros().get(i).getUrl()%>" style="width:50px; height:50px">
                    </td>
                    <td>
                        <form action="GerenciaPedido" method="post">
                            <input type="submit" value="Comprar" name="acao">
                            <input type="hidden" value="<%=Livro.getLivros().get(i).getId()%>" name="id">
                        </form>
                    </td>
                </tr>
                <%
                }
                %>
            </table>
        </div>
        
    </body>
</html>
