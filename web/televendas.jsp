<%-- 
    Document   : televendas
    Created on : 06/11/2013, 23:36:50
    Author     : Gabriiel
--%>
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
        <link href="css/televendas.css" rel="stylesheet" type="text/css" media="screen">
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
                      <p>Televendas</p>
                  </div>
                  <form name="frmcadastrar" id="id_cadastrar" action="bd_cadastro">

                      <div class="center_num">
                        <span class="espaco_tel_1">4003-1234</span><span class="espaco_tel_2">0XX11 4003-1234</span>
                      </div>
                      <div class="center_num">
                        <span class="espaco_loc_1">Capitais e Regiões metropolitanas</span><span class="espaco_loc_2">Demais localidades</span>
                      </div>
                      <div class="title">
                      <h2>O que é</h2>
                    </div>
                      <p>É um serviço de vendas por telefone para você comprar ou tirar dúvidas sobre produtos e preços, com toda comodidade. Nossos atendentes são treinados para oferecer a você o melhor atendimento, com rapidez e qualidade.</p>
                    <div class="title">
                      <h2>Horário de atendimento</h2>
                    </div>
                    <p>De segunda-feira a sexta-feira, das 8h às 22h. Sábado, domingo e feriados das 8h às 20h.</p>
                    <div class="title">
                      <h2>Custo da ligação</h2>
                    </div>
                    <p>Ligações para o serviço 4003 feitas de telefone fixo têm custo de ligação local + imposto locais, conforme o Estado de origem; chamadas feitas de celulares têm custo de ligação + imposto para celulares, conforme a operadora. Essas tarifas, cobradas nas respectivas faturas, não são válidas para ligação com DDD. 
                       <br /><br />Para verificar se a cidade de onde você está falando permite chamadas sem o código da operadora, tente discar diretamente 4003-1000.</p>
                  </form>
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
    </body>
</html>