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
        
        <link href="css/sobre.css" rel="stylesheet" type="text/css" media="screen">
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
                    <div class="pagemenu">
                        <ul>
                            <li class="tel"><a href="#televendas">TELEVENDAS: (11) 2942-1488</a></li>
                            <li><a href="#minhaconta">MINHA CONTA</a></li> 
                            <li><a href="#meuspedidos">MEUS PEDIDOS</a></li> 
                        </ul>
                    </div>     
                    <a href="#logout" class="logout">Sair</a>
                    <a href="#" class="logo"></a>
                    <form id="search">
                        <div class="label">
                            <label class="pre" for="search">Digite sua busca</label>
                            <input name="search" type="text" class="text s-two-quart" autocomplete="off" required/>
                            <input type="submit" class="button s-quart neat bsearch" value="" />
                        </div>
                    </form>
                    <p>Olá, <span class="name">Etevaldo</span></p>
                    <a class="button s-one-six bcart" href="#cart"><span class="button neat count">0</span></a>
                </div>
            </header>
            <nav>
                <div class="holder">
                    <ul>
                        <li>
                            <a href="#games" class="button first s-one sel">Games</a>
                        </li>
                        <li>
                            <a href="#sobre" class="button s-one">Sobre</a>
                        </li>
                        <li>
                            <a href="#contato" class="button s-one">Contato</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div id="container" class="holder">
                <!--Aqui o conteudo é carregado dinamicamente-->
                <div class="bread-box">
                    <!--Atualiza sempre que o container muda-->
                    <p class="bread-search">
                        <span class="inicial">Página Inicial </span><span class="separador"></span><span>Games</span><!--<a href="#Games">Games</a><span class="separador"></span><span>Detalhes</span>-->
                    </p>
                </div>
                <div class="content">
                    <div class="title">
                        <p>Sobre</p>
                    </div>
                    <div class="info">
                        <p>A Drummond Games é uma empresa especializada na venda de jogos para plataforma PC (Personal Computer), onde disponibiliza para seus clientes uma vasta gama de títulos das maiores produtoras do mundo, como Eletronic Arts, Activision, Sega,Paradox, além dos principais lançamentos indies. Temos o intuito de oferecer aos nossos clientes os melhores preços e produtos aprimando sempre pela qualidade e a satisfação.</p>

                        <div class="title">
                          <p>Missão</p>
                        </div>
                        <p>Missão: Nossa razão de ser é comercializar e distribuir jogos, com a finalidade de oferecer os melhores jogos (duas vezes a mesma palavra) para a plataforma PC para o entretenimento de nossos clientes.</p>

                        <div class="title">
                          <p>Visão</p>
                        </div>
                        <p>Visão: Estar entre os principais do mercado e ser referência emcomercialização de jogos no Brasil.</p>

                        <div class="title">
                          <p>Valores</p>
                        </div>
                        <ul>
                          <li> Satisfação do cliente </li>
                          <li> Responsabilidade </li>
                          <li> Segurança </li>
                          <li> Ética </li>
                          <li> Confiança </li>
                        </ul>
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
        <script type="text/javascript" src="js/methods.js"></script>
        <!--<script type="text/javascript" src="js/app.js"></script>-->
    </body>
</html>