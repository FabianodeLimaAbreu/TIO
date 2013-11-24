<%-- 
    Document   : meus_pedidos
    Created on : 19/11/2013, 00:11:10
    Author     : Gabriiel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
        Remove this if you use the .htaccess -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Drummond Games</title>
        <meta name="description" content="" />
        <meta name="author" content="Fabiano de Lima" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
        <!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
        <link href="css/common.min.css" rel="stylesheet" type="text/css" media="screen">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <link href="css/iehack.css" rel="stylesheet">
    <![endif]-->
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
    </head>
    <body>
      <div id="wrap">
        <!--Wrap de todo o conteudo-->
        <header>
          <div class="holder">
            <a href="#" class="logo"></a>
          </div>
        </header>
        <div id="container" class="holder">
          <div class="content">
            <div class="title">
              <p>Meus Pedidos</p>
            </div>
             <form name="frmcadastrar" action="bd_cadastro">
              <div class="meus_pedidos">
                <table>
                  <tr class="HeaderTable">
                    <td>Número do Pedido</td>
                    <td>Valor Total (R$)</td>
                    <td>Data do Pedido</td>
                    <td>Situação</td>
                  </tr>
                  <tr>
                    <td>123</td>
                    <td>99,32</td>
                    <td>19/11/2013</td>
                    <td>Andamento</td>
                  </tr>
                  <tr class="describe">
                    <td colspan= "4">
                      <div class="slide">
                      <table>
                        <tr class="HeaderSlide">
                          <td>Jogo</td>
                          <td>Valor Unidade (R$)</td>
                          <td>Quantidade</td>
                        </tr>
                        <tr>
                          <td>Diablo</td>
                          <td>50,00</td>
                          <td>2</td>
                        </tr>
                        <tr>
                          <td>Sonic</td>
                          <td>83</td>
                          <td>1</td>
                        </tr>
                      </table>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>50,32</td>
                    <td>01/09/2013</td>
                    <td>Andamento</td>
                  </tr>
                  <tr>
                    <td>5658</td>
                    <td>129,32</td>
                    <td>19/11/2013</td>
                    <td>Finalizado</td>
                  </tr>
                 </table>
                </div>
             </form>
          </div>
          <footer>
            <span class="logo_mini"></span>
              <p>Copyright © 2013 - Drummond Games - Todos os direitos reservados</p>
          </footer>
        </div>
        </div>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/methods.js"></script>
</html>
