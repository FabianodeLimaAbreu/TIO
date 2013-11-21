<%-- 
    Document   : index
    Created on : 19/09/2013, 13:34:50
    Author     : Gabriiel
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
                    <a href="home.jsp" class="logo"></a>
                </div>
            </header>
            <div id="container" class="holder">
              <div class="content">
                  <div class="title">
                      <p>Cadastro de Clientes</p>
                  </div>

                  <form name="frmcadastrar" id="id_cadastrar" action="bd_cadastro">
                    <div class="cad_geral">
                      <p>Dados Pessoais</p>
                    </div>
                  <div class="cad_geral">
                    <label for="txtnome">
                      <span>Nome Completo</span>
                      <br /><input type="text" size="54px" name="txtnome" maxlength="45"/>
                    </label>
                    <label for="txtsexo">
                      <span class="position_aux1">Sexo</span>
                      <br />M<input type="radio" name="txtsexo" />
                            F<input type="radio" name="txtsexo" /><br />
                    </label>
                    <label for="txtrg">
                      <span>RG</span>
                      <br/><input type="text" name="txtrg" id="campoRg" size="20px"/>
                    </label>
                    <label for="txtcpf">
                      <span>CPF</span>
                      <br/><input type="text" name="txtcpf" id="campoCpf" size="20px" />
                    </label>
                    <label for="txtdata">
                      <span>Data de Nascimento</span>
                      <br/><input type="text" name="txtdata" size="15px" id="campoData" /> 
                    </label>
                    <label for="txttelefone">
                      <span>Telefone</span>
                      <br /><input type="text" id="campoTelefone" name="txttelefone" size="20" />
                    </label>
                    <label for="txtemail">
                      <span>Email</span>
                      <br /><input type="text" name="txtemail" size="35" maxlength="40"/>
                    </label>
                    <label for="txtlogin">
                      <span>Login</span>
                      <br /><input type="text" name="txtlogin" size="20" maxlength="13"/>
                    </label>
                    <label for="txtsenha">
                      <span>Senha</span>
                      <br /><input type="password" name="txtsenha" size="20" maxlength="15"/>
                    </label>
                  <div class="cad_geral">
                     <br /><p>Endereço</p>
                  </div>
                  <label for="txtrua">
                    <span>Rua</span>
                    <br /><input type="text" name="txtrua" size="54px" maxlength="50"/>
                  </label>
                  <label for="txtnumero">
                    <span>Número</span>
                    <br /><input name="txtnumero" type="text" size="3px" class="input_num" maxlength="5"/>
                  </label>
                  <label for="txtcep">
                    <span>CEP</span>
                    <br /><input type="text" name="txtcep" id="campoCep"/>
                  </label>
                  <label for="txtcompl">
                    <span>Complemento</span>
                    <br /><input name="txtcompl" type="text" class="input_cad" maxlength="20" />
                  </label>
                  <label for="txtbairro">
                    <span>Bairro</span>
                    <br /><input name="txtbairro" type="text" size="20" maxlength="21" />
                  </label>
                  <label for="txtcidade">
                    <span>Cidade</span>
                    <br /><input name="txtcidade" type="text" size="20" class="input_cad" maxlength="30" />
                  </label>
                  <label for="txtestado">
                    <span>Estado</span>
                    <br /><input name="txtestado" type="text" size="20" class="input_cad" />
                  </label>
                </div>
                    <div class="main">
                      <br />
                      <input type="submit" name="cadastrar" value="Cadastrar">
                      <input type="button" name="cancelar" value="Cancelar" onClick="window.location.href='home.jsp';">
                    </div>
                    <div class="coment">
                      <p>Espaço reservado para o Fabiano colocar o erro.<br/>Não sei se era bem assim o espaço que vc queria.</p>
                    </div>
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
        <script type="text/javascript" src="js/maskedinput.js"></script>
        <script type="text/javascript" src="js/methods.js"></script>
        <script>
          jQuery(function($){
              $("#campoData").mask("99/99/9999");
              $("#campoTelefone").mask("(999) 9999-9999");
              $("#campoCpf").mask("999.999.999 - 99");
              $("#campoRg").mask("99.999.999 - 9");
              $("#campoCep").mask("99999 - 999");
              $("#campoTelefone").mask("(999) 999-9999");
            });
	</script>
    </body>
</html>