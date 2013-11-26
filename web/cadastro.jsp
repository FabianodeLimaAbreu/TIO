<%-- 
    Document   : index
    Created on : 19/09/2013, 13:34:50
    Author     : Gabriiel
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="cadastro.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.GerenciadorDeConexao"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        <% if (request.getParameter("acao") == null) {
                //JOptionPane.showMessageDialog(null,"Não houve nenhuma tentativa de conexão");
%>          
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

                    <form name="frmcadastrar" id="id_cadastrar" action="cadastro.jsp?acao=cadastrar" method="post">
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
                                <br />
                                <select name="txtestado" size="1">
                                    <option value = "1">AC</option>
                                    <option value = "2">AL</option>
                                    <option value = "3">AM</option>
                                    <option value = "4">AP</option>
                                    <option value = "5">BA</option>
                                    <option value = "6">CE</option>
                                    <option value = "7">DF</option>
                                    <option value = "8">ES</option>
                                    <option value = "9">GO</option>
                                    <option value = "10">MA</option>
                                    <option value = "11">MG</option>
                                    <option value = "12">MS</option>
                                    <option value = "13">MT</option>
                                    <option value = "14">PA</option>
                                    <option value = "15">PB</option>
                                    <option value = "16">PE</option>
                                    <option value = "17">PI</option>
                                    <option value = "18">PR</option>
                                    <option value = "19">RJ</option>
                                    <option value = "20">RN</option>
                                    <option value = "21">RR</option>
                                    <option value = "22">RO</option>
                                    <option value = "23">RS</option>
                                    <option value = "24">SC</option>
                                    <option value = "25">SE</option>
                                    <option value = "26">SP</option>
                                    <option value = "27">TO</option>
                                </select>
                            </label>
                        </div>
                        <div class="main">
                            <br />
                            <input type="submit" name="cadastrar" value="Cadastrar">
                            <input type="button" name="cancelar" value="Cancelar" onClick="window.location.href='home.jsp';">
                        </div>
                        <div class="coment">
                            <!--Div de status-->
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
        <script type="text/javascript" src="js/validate.js"></script>
        <script>
            jQuery(function($){
                $("#campoData").mask("99/99/9999");
                $("#campoTelefone").mask("(999) 9999-9999");
                $("#campoCpf").mask("999.999.999 - 99");
                $("#campoRg").mask("99.999.999 - 9");
                $("#campoCep").mask("99999 - 999");
                $("#campoTelefone").mask("(999) 999-9999");
            });
			
            $("form").validate({
                rules:{
                    txtnome:{
                        required:true,
                        minlength:3
                    },
                    txtrg:{
                        required:true,
                        minlength:9
                    },
                    txtcpf:{
                        required:true,
                        minlength:11
                    },
                    txtemail:{
                        required:true,
                        minlength:7,
                        //valid_email
                    },
                    txtdata:{
                        required:true,
                        minlength:8
                    },
                    txttelefone:{
                        required:true,
                        minlength:8
                    },
                    txtlogin:{
                        required:true,
                        minlength:3
                    },
                    txtsenha:{
                        required:true,
                        minlength:6
                    },
                    txtrua:{
                        required:true,
                        minlength:3
                    },
                    txtnumero:{
                        required:true,
                    },
                    txtcep:{
                        required:true,
                        minlength:8
                    },
                    txtbairro:{
                        required:true,
                        minlength:3
                    },
                    txtcidade:{
                        required:true,
                        minlength:3
                    },
                    txtestado:{
                        required:true
                    }					
                },
                messages: {
                    txtnome:"Preencha o campo Nome Completo.",
                    txtrg:"RG deve ser preenchido e ter mais que 9 digitos.",
                    txtcpf:"CPF deve ser preenchido e ter mais que 11 digitos.",
                    txtdata:"Data de nascimento deve ser preenchida e seguir o padrão: '99/99/9999'",
                    txttelefone:"Telefone deve ser preenchido e seguir o padrão: '(099) 9999-9999'",
                    txtlogin:"O campo login deve ser preenchido corretamente",
                    txtsenha:"Preencha corretamente o campo senha.",
                    txtemail:"Email invalido",
                    txtrua:"Preencha corretamente o campo Rua",
                    txtnumero:"Preencha corretamente o campo Número",
                    txtcep:"Preencha corretamente o campo Cep seguindo o padrão 99999-999",
                    txtbairro:"Preencha corretamente o campo Bairro",
                    txtcidade:"Preencha corretamente o campo Cidade",
                    txtestado:"Preencha corretamente o campo Estado"
					
                },
                errorElement:"div",errorPlacement: function(error,element) {
                    $(".coment").html(error);
                }
            });
        </script>
        <% } else {

                Connection con = null;
                try {


                    //Conexão com o Banco SQL.
                    con = GerenciadorDeConexao.getConexao();

                    //Variáveis que recebem os parâmetros passados por url.
                    String nome = request.getParameter("txtnome");
                    String sexo = request.getParameter("txtsexo");
                    String rg = request.getParameter("txtrg");
                    String cpf = request.getParameter("txtcpf");
                    String dataNascimento = request.getParameter("txtdata");
                    String telefone = request.getParameter("txttelefone");
                    String email = request.getParameter("txtemail");
                    String login = request.getParameter("txtlogin");
                    String senha = request.getParameter("txtsenha");
                    String rua = request.getParameter("txtrua");
                    int numero = Integer.parseInt(request.getParameter("txtnumero"));
                    String cep = request.getParameter("txtcep");
                    String complemento = request.getParameter("txtcomplemento");
                    String bairro = request.getParameter("txtbairro");
                    String cidade = request.getParameter("txtcidade");
                    int codestado = Integer.parseInt(request.getParameter("txtestado"));

                    int codsexo = 0;

                    //Tratativa pra passar o código do sexo
                    if (sexo.trim() == "F") {
                        codsexo = 1;
                    } else if (sexo.trim() == "M") {
                        codsexo = 2;
                    }

                    Cadastro c = new Cadastro(nome, codsexo, rg, cpf, dataNascimento, telefone, email, login, senha, rua, numero, cep, bairro, cidade, codestado, complemento);
                    c.cadastrar();

                } catch (SQLException erroSQL) {
                    JOptionPane.showMessageDialog(null, "Erro: " + erroSQL.toString());
                } finally {
                    GerenciadorDeConexao.closeConexao(con);
                    response.sendRedirect("home.jsp");
                }
            }%>        

    </body>
</html>