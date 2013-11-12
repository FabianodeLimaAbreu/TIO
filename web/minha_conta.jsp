<%-- 
    Document   : minha_conta
    Created on : 03/11/2013, 00:52:26
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
              <p>Minha conta</p>
            </div>
            <div class="minha_conta">
              <input type="button" class="button_end" name="alt_end" value="Alterar Endereço">
              <input type="button" class="button_dados" name="dados_pessoais" value="Alterar Dados Pessoais">
              <input type="button" class="button_senha" name="alt_senha" value="Alterar Senha">
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
        <script type="text/javascript" src="js/maskedinput.js"></script>
</html>
