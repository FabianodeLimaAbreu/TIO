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
            <div class="minha_conta">
              <ul class="ul_conta">
                  <li class="li_conta">
                  <a href="#ped_abertos" class="button-conta">Pedidos Abertos</a>
                </li>
                <li>
                  <a href="#ped_ult" class="button-conta">Últimos Pedidos</a>
                </li>
                <li>
                  <a href="#ped_todos" class="button-conta">Todos Pedidos</a>
                </li>
              </ul>
            </div>
            <div class="divdebaixo">

             <form name="frmcadastrar" action="bd_cadastro">
              <div class="ped_abertos">
                  <h3>Pedidos Abertos</h3>
                  <br /><br />

              </div>
              <div class="ped_ult">
                  <h3>Últimos Pedidos</h3>
                  <br /><br />
              </div>
              <div class="alt_senha">
                <h3>Alterar Senha</h3>
                <br /><br />

              </div>
                <div class="button_alt">
                  <input type="submit" name="cadastrar" value="Alterar" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
                  <input type="button" name="cancelar" value="Cancelar" onClick="window.location.href='home.jsp';" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
                </div>
              </form>
            </div>
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
