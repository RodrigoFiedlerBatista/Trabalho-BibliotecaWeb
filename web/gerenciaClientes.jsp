<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Clientes</title>
        <link rel="stylesheet" type="text/css" href="css/livros.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="table">
            <table border="">
                <tr>
                    <td colspan="9" align="center">
                        Clientes
                    </td>
                </tr>
                <tr>
                    <td>
                        ID
                    </td>
                    <td>
                        Nome
                    </td>
                    <td>
                        CPF
                    </td>
                    <td>
                        Telefone
                    </td>
                    <td>
                        CEP
                    </td>
                    <td>
                        Login
                    </td>
                    <td>
                        Email
                    </td>
                </tr>
                <% 
                Cliente.atualizaClientes();
                for (int i = 0; i < Cliente.getClientes().size(); i++) {
                %>    
                <tr>
                    <td>
                        <%= Cliente.getClientes().get(i).getId_cliente() %>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getNome() %>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getCpf() %>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getTelefone()%>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getCep()%>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getLogin() %>
                    </td>
                    <td>
                        <%= Cliente.getClientes().get(i).getEmail()%>
                    </td>
                    <td>
                        <form action="GerenciaCliente" method="post">
                            <input type="submit" value="Editar" name="acao">
                            <input type="hidden" value="<%= Cliente.getClientes().get(i).getId_cliente() %>" name="id_editar">
                        </form>
                    </td>
                    <td>
                        <form action="GerenciaCliente" method="post">
                            <input type="submit" value="Excluir" name="acao">
                            <input type="hidden" value="<%=Cliente.getClientes().get(i).getId_cliente()%>" name="id_excluir">
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
