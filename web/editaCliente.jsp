<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Cliente</title>
        <link rel="stylesheet" type="text/css" href="css/cadastra.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="cadastra-page">
            <div class="form">
                <p>Edição de Cliente</p>
                <% 
                Cliente cliente = new Cliente();
                cliente = (Cliente) request.getAttribute("cliente");
                System.out.println("ID na jsp: " + cliente.getId_cliente());
                %>
                <form class="cadastra-form" action="GerenciaCliente" method="post">
                    
                    <input type="text" disabled="true" value="<%= cliente.getId_cliente() %>"/>
                    <input type="hidden" value="<%=cliente.getId_cliente()%>" name="id">
                    <input type="text" placeholder="Nome" name="nome" value="<%= cliente.getNome() %>" required/>
                    <input type="text" placeholder="CPF" name="cpf" value="<%= cliente.getCpf() %>" required/>
                    <input type="text" placeholder="Telefone" name="telefone" value="<%= cliente.getTelefone() %>" required onkeypress="return SomenteNumero(event)"maxlength="4"/>
                    <input type="text" placeholder="CEP" name="cep" value="<%= cliente.getCep() %>" required/>
                    <input type="text" placeholder="Login" name="login" value="<%= cliente.getLogin() %>" required onkeypress="return SomenteNumero(event)"/>
                    <input type="text" placeholder="Email" name="email" value="<%= cliente.getEmail() %>" required/>
                    <input type="submit" value="Salvar" id="btn_cadastrar" name="acao"/>
                    
                </form>
                <p class="message"><a href="login.jsp">Voltar Para Login</a></p>
            </div>
        </div>
    </body>
</html>
