<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca - Pedido</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script language="JavaScript" src="js/scripts.js"></script>
    </head>
    <body>
        <form action="GerenciaPedido" method="post">
            <input type="text" placeholder="Quantidade" name="qtd">
            <input type="submit" value="Confirmar Pedido" name="acao">
        </form>
    </body>
</html>
