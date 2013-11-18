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
        <div id="wrap" class="hide">
            <div class="mask_default mask">
                <img src="images/loader.GIF" class="loader">
            </div>
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
                            <label class="pre" for="search">Digite o nome do game:</label>
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
                            <a href="#games" class="button first s-one">Games</a>
                        </li>
                        <li>
                            <a href="#sobre" class="button s-one">Sobre</a>
                        </li>
                        <!--<li>
                            <a href="#contato" class="button s-one">Contato</a>
                        </li>-->
                    </ul>
                </div>
            </nav>
            <div id="container" class="holder hide">
                <!--Aqui o conteudo é carregado dinamicamente-->
                <div class="bread-box">
                    <!--Atualiza sempre que o container muda-->
                    <p class="bread-search">
                        <!--<span class="inicial">Página Inicial </span><span class="separador"></span><span>Games</span><!--<a href="#Games">Games</a><span class="separador"></span><span>Detalhes</span>-->
                        <span class="inicial">Página Inicial </span><span class="separador"></span><span></span>
                        
                    </p>
                </div>
                <div id="cart" class="hide">
                    <!--Carrinho de compras-->
                    <div class="title">
                        <p>Seu Pedido</p>
                        <a href="#close" class="button s-third"></a>
                    </div>
                    <div class="amask"></div>
                    <div class="table">
                        <table class="simple-table scrollTable">
                            <thead class="fixedHeader">
                                <tr>
                                    <th>Descrição do Jogo</th><th>Preço (R$)</th><th>Quantidade</th><th>Total (R$)</th><th>Remover</th>
                                </tr>
                            </thead>
                            <tbody class="scrollContent">
                                <!--<tr>
                                    <td><img src="images/games/cart/1.jpg"/>Fable III</td>
                                    <td class="val">69,99</td>
                                    <td>
                                        <select name="unidade" class="button">
                                            <option value="1" name="quantidade">1 Unidade</option>
                                            <option value="2" name="quantidade">2 Unidade</option>
                                            <option value="3" name="quantidade">3 Unidade</option>
                                            <option value="4" name="quantidade">4 Unidade</option>
                                            <option value="5" name="quantidade">5 Unidade</option>
                                            <option value="6" name="quantidade">6 Unidade</option>
                                            <option value="7" name="quantidade">7 Unidade</option>
                                            <option value="8" name="quantidade">8 Unidade</option>
                                            <option value="9" name="quantidade">9 Unidade</option>
                                        </select>
                                    </td>
                                    <td>
                                        <input type="text" value="629,91" disabled="disable"/>
                                    </td>
                                    <td>
                                        <a href="#" class="button"></a>
                                    </td>
                                </tr>-->
                            </tbody>
                        </table>
                        <div class="button-box">
                            TOTAL<div><!--<span>R$</span>1079,82--></div>
                                <ul>
                                    <li><a href="#" class="button send"></a></li>
                                    <li><a href="#" class="button cont"></a></li>
                                </ul>
                        </div>
                    </div>
                </div>
                
                <div id="detail" class="hide">
                    <!--Detalhes do Games -->
                     <div class="title">
                        <p></p>
                        <a href="#close" class="button s-third"></a>
                    </div>
                    <div class="main">
                        <div class="desc-side">
                            <img src=""/>
                            <div class="radius desc">
                                <h1 class="first">Categoria:</h1>
                                <h2 class="category"><!--Vazio esperando o conteudo do json--></h2>
                                <h1>Desenvolvedora:</h1>
                                <h2 class="desenvolvedora"></h2>
                                <h1>Lançamento:</h1>
                                <h2 class="d_lanc"></h2>
                            </div>
                        </div>
                        <div class="info-side">
                            <div class="info">
                                <!--Esperando a descrição do game via json-->
                            </div>
                            <div class="radius price">
                                <h1>Preço:<span>R$</span><span class="valor"></span></h1>
                                <a href="" class="button add-cart"></a>
                            </div>
                        </div>
                        <div class="require-side">
                            <h1>Requisitos do Sistema</h1>
                            <dl>
                                <dt>Processador: </dt>
                                <dd class="proc"><!--esperando o conteudo do json--></dd>
                                <dt>Velocidade do processador: </dt>
                                <dd class="v_proc"></dd>
                                <dt>Memória RAM: </dt>
                                <dd class="ram"></dd>
                                <dt>Disco Rígido: </dt><dd class="hd"></h2>
                                <dt>Placa de Video: </dt><dd class="video"></dd>
                                <dt>Memória de vídeo: </dt><dd class="m_video"></dd>
                                <dt>Sistemas Operacionas: </dt><dd class="so"></dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="content" >
                    <!--Cria box dinamicament a pagina -->
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
            <div id="modal" class="hide">
                <div class="modal-content">
                    <a href="#close" class="button s-third"></a>
                    <div class="modal-text">
                        <span class="big-icon"></span>
                        <div class="aviso">
                            <h2></h2>
                            <p></p>
                            <div class="dialog">
                                <a href="home.jsp">Sim</a>
                                <a href="#no">Não</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <iframe name="iframeTeste" id="iframeCart" src="form.jsp"></iframe> <!--Abre a tela que possui o formulario-->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/methods.js"></script>
        <script type="text/javascript" src="js/xmlwriter.js"></script>
        <script type="text/javascript" src="js/app.js"></script>
    </body>
</html>