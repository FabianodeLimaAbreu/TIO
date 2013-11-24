<%-- 
    Document   : form
    Created on : 15/11/2013, 23:41:52
    Author     : Fabiano de Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Esta tela da o submit do form</title>
    </head>
    <body>
        <form action="post.jsp" method="get">
            Campo de envio do xml: <input type="text" id="pedido" value="" name="pedido"/>
            Campo de envio do codigo do cliente: <input type="text" id="codCad" value="" name="codCad"/>
        </form>
    </body>
</html>
