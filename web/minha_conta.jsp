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
              <ul class="ul_conta">
                  <li class="li_conta">
                  <a href="#alt_end" class="button-conta">Alterar Endereço</a>
                </li>
                <li>
                  <a href="#dados_pessoais" class="button-conta">Alterar Dados Pessoais</a>
                </li>
                <li>
                  <a href="#alt_senha" class="button-conta">Alterar Senha</a>
                </li>
              </ul>
            </div>
            <div class="divdebaixo">
              <div class="alt_end">
                  <!--Você não esta usando o id dos input pra nada então você pode remove-los-->
                  <form name="frmcadastrar" id="id_alt_end" action="bd_cadastro">
                  <label for="txtrua">
                      <span>Rua: </span>
                      <input type="text" name="txtrua" size="54px" maxlength="50"/>
                  </label>
                  <label for="txtnumero">
                      <span>Número: </span>
                      <input name="txtnumero" type="text" size="3px" class="input_num" maxlength="5"/>
                  </label>
                  <label for="txtcep">
                      <span>CEP: </span>
                      <input type="text" name="txtcep" id="campoCep"/>
                  </label>
                  <label for="txtcomplemento">
                      <span>Complemento: </span>
                      <input name="txtcomplemento" type="text" class="input_cad" maxlength="20" />
                  </label>
                  
                  <!--<div class="label">
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
                  <!--</div>-->
                  <div class="main">
                    <input type="submit" name="cadastrar" value="Alterar" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
                    <input type="button" name="cancelar" value="Cancelar" onClick="window.location.href='home.jsp';" onMouseOver="style.cursor='pointer'; style.cursor='hand'";>
                 </div>
              </form>
              </div>
            </div>
           <div class="alt_dados">
                    <div class="label">
                      <p>Dados Pessoais</p>
                    </div>
                    <div class="label">
                      <label>Nome completo</label>
                      <div class="label_sexo">
                        <label>Sexo</label>
                      </div>
                    </div>
                    <div class="label_input">
                        <input type="text" size="54px" name="txtnome" maxlength="45"/>
                      <div class="sexo_mf">
                        <label>M</label><input type="radio" name="txtsexo" />
                        <label>F</label><input type="radio" name="txtsexo" />
                      </div>
                    </div>
                    <div class="label">
                      <label>RG</label>
                      <div class="label_aux1">
                        <label>CPF</label>
                      </div>
                      <div class="label_aux2">
                        <label>Data de Nascimento</label>
                      </div>
                    </div>
                    <div class="label_input">
                      <input type="text" name="txtrg" id="campoRg" size="20px"/>
                      <input type="text" name="txtcpf" id="campoCpf" size="20px" class="input_cad" />
                      <input type="text" name="txtdata" size="20px" id="campoData" class="input_cad" /> 
                    </div>
                    <div class="label">
                      <label>Telefone</label>
                      <div class="label_aux1">
                        <label>E-mail</label>
                      </div>
                    </div>
                    <div class="label_input">
                      <input type="text" id="campoTelefone" name="txttelefone" size="20" />
                      <input type="text" name="txtemail" size="35" class="input_cad" maxlength="40"/>
                    </div>
                    <div class="label">
                      <label>Login</label>
                      <div class="label_aux1">
                        <label>Senha</label>
                      </div>
                    </div>
                    <div class="label_input">
                        <input type="text" name="txtlogin" size="20" maxlength="13"/>
                        <input type="text" name="txtsenha" size="20" class="input_cad" maxlength="15"/>
                    </div>
               </div>
               <div class="main">
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
        <script type="text/javascript" src="js/maskedinput.js"></script>
        <script>
          jQuery(function($){
              $("#campoData").mask("99/99/9999");
              $("#campoTelefone").mask("(999) 9999-9999");
              $("#campoCpf").mask("999.999.999 - 99");
              $("#campoRg").mask("99.999.999 - 9");
              $("#campoCep").mask("99999 - 999");
    });
              $("#campoTelefone").mask("(999) 999-9999");
	</script>
</html>
