<%-- 
    Document   : post
    Created on : 09/11/2013, 16:55:42
    Author     : Fabiano de Lima

    Release: 1
    Alter on : 15/11/2013, 22:24
    Author     : Fabiano de Lima
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="carrinho.*;"%>
<%
    String valor = request.getParameter("pedido"); /*Recebe o valor do input no post*/
    /*int codCad = Integer.parseInt(request.getParameter("codCad")); //Esta linha recebe o código do cliente passado pela URL*/
    cart c = new cart(2, valor); /*Cria o objeto. Nesta linha o valor 1 será substituído pela variável codCad*/
    c.saveCart(); /*Chamada do metodo*/
    List relatorio;
    relatorio = c.getRELATORIO_COMPRA(); //RECEBE A PROPRIEDADE DA CLASSE QUE VAI ESTAR CARREGADA COM O "BOLETO"
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>     
    </body>
</html>
