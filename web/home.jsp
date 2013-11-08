<%-- 
    Document   : index
    Created on : 19/09/2013, 13:34:50
    Author     : Fabiano de Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />

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
        <div id="wrap" class="home hide">
            <!--Wrap de todo o conteudo-->
            <header>
                <div class="holder">
                    <div class="pagemenu">
                        <ul>
                            <li class="tel"><a href="#televendas">TELEVENDAS: (11) 2942-1488</a></li>
                            <li><a href="#sobre">SOBRE</a></li> 
                        </ul>
                    </div>
                    <p>Olá, <span class="name">Visitante</span></p>
                    <ul class="user-box">
                        <li><a href="#modal">Cadastre-se</a><span class="cadastre"></span><span>|</span>
                        <li><span class="logout"></span><a href="index.jsp">Login</a></li>
                    </ul> 
                    <a href="#" class="logo"></a>
                </div>
                <!--<div align=center>
                    <a href='http://contador.s12.com.br'>
                        <img src='http://contador.s12.com.br/img-5A8bCy7b-23.gif' border='0' alt='contador de visitantes'>
                    </a>
                    <script type='text/javascript' src='http://contador.s12.com.br/ad.js?id=5A8bCy7b'></script>
                </div>-->
            </header>
            <div id="container" class="holder hide">
                <div class="content">
                    <!--Carreega o conteudo dinamicamente-->
                </div>
                <footer>
                    <div class="payform">
                        <h1>FORMA DE PAGAMENTO</h1>
                        Boleto<br/>
                        <span class="button boleto"></span>
                    </div>
                    <span class="logo_mini"></span>
                    <span class="lock"></span>
                    <p>Copyright © 2013 - Drummond Games - Todos os direitos reservados</p>
                </footer>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/slides.min.jquery.js"></script>
        <script type="text/javascript" src="js/methods.js"></script>
        <script type="text/javascript" src="js/home.js"></script>
    </body>
</html>