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
                    <p>Olá, <span class="name">Etevaldo</span></p>
                    <div class="user-box">
                        <ul>
                            <li><a href="#modal">Cadastre-se</a><span class="cadastre"></span><span>|</span>
                            <li><span class="logout"></span><a href="index.jsp">Login</a></li>
                        </ul>
                    </div> 
                    <a href="#" class="logo"></a>
                </div>
            </header>
            <div id="container" class="holder">
                <div class="content">
                    <div id="slider">
                        <div class="slides_container">
                            <div class="slides">
                                    <img src="images/home/diablo.jpg"/>
                                    <div class="caption">
                                            <p>Diablo III</p>
                                    </div>
                            </div>
                            <div class="slides">
                                    <img src="images/home/gta5.jpg"/>
                                    <div class="caption">
                                                <p>GTA V</p>
                                    </div>
                            </div>
                            <div class="slides">
                                    <img src="images/home/battlefield.jpg"/>
                                    <div class="caption">
                                            <p>Battlefield 4</p>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="topVendas">
                        <h1>Top Vendas</h1>
                        <table class="toptable">
                            <tbody class="content_top">
                                <tr>
                                    <td><img src="images/games/cart/1.jpg"/>Fable III<span>RPG</span></td>
                                    <td class="selles">Total de Vendas: 55</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="news">
                        <!--Carrega as noticias do mundo dos games-->
                        <!--<a href="index.html" target='_blank'>
                            <img src='images/news/1.jpg'/>
                            <p>GTA 5 alcança a marca de US$ 800 milhões no primeiro dia de vendas</p>
                        </a>-->
                    </div>
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