<%-- 
    Document   : alt_end
    Created on : 13/11/2013, 19:22:50
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

        <link href="css/cadastro.css" rel="stylesheet" type="text/css" media="screen">
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
              <p>Alterar Endereço</p>
            </div>

<!-- Fabiano temos que veriricar com os back se vai ser dado submit nas paginas para dar os UPDATE.
    Vai ser button ou a href?-->
              <form name="frmcadastrar" id="id_alt_end" action="bd_cadastro">
              <div class="label">
                <label>Rua</label>
                <label class="label_num">Número</label>
              </div>
              <div class="label_input">
                 <input type="text" name="txtrua" size="54px" maxlength="50"/>
                 <input name="txtnumero" type="text" size="3px" class="input_num" maxlength="5"/>
              </div>
              <div class="label">
                <label>CEP</label>
                <div class="label_aux1">
                  <label>Complemento</label>
                </div>
              </div>
              <div class="label_input">
                <input type="text" name="txtcep" id="campoCep"/>
                <input name="txtcomplemento" type="text" class="input_cad" maxlength="20" />
              </div>
              <div class="label">
                <label>Bairro</label>
                <div class="label_aux1">
                  <label>Cidade</label>
                </div>
                <div class="label_aux2">
                  <label>Estado</label>
                </div>
              </div>
              <div class="label_input">
                <input name="txtbairro" type="text" size="20" maxlength="21" />
                <input name="txtcidade" type="text" size="20" class="input_cad" maxlength="30" />
                <input name="txtestado" type="text" size="20" class="input_cad" /> <!--criar combo-->
              </div>
              <div class="main">
                <input type="submit" name="cadastrar" value="Alterar" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
                <input type="button" name="cancelar" value="Cancelar" onClick="window.location.href='home.jsp';" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
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
        <script type="text/javascript" src="js/maskedinput.js"></script>
</html>
