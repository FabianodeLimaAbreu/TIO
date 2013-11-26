/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastro;

import DAO.GerenciadorDeConexao;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.*;

public class Cadastro {

    private String NOME;
    private int SEXO;
    private String RG;
    private String CPF;
    private String DATA_NASC;
    private String TELEFONE;
    private String EMAIL;
    private String LOGIN;
    private String SENHA;
    private String RUA;
    private int NUMERO;
    private String CEP;
    private String BAIRRO;
    private String CIDADE;
    private int ESTADO;
    private String COMPLEMENTO;
    /*
     * VARIÁVEIS DE TRANSAÇÕES COM BANCO DE DADOS
     */
    String sql = null;
    ResultSet rs = null;
    Statement stmt = null;
    Connection conexao = null;

    /*
     * CONSTRUTOR DA CLASSE
     */
    public Cadastro(String NOME, int SEXO, String RG, String CPF, String DATA_NASC, String TELEFONE, String EMAIL, String LOGIN, String SENHA, String RUA, int NUMERO, String CEP, String BAIRRO, String CIDADE, int ESTADO, String COMPLEMENTO) {
        this.NOME = NOME;
        this.SEXO = SEXO;
        this.RG = RG;
        this.CPF = CPF;
        this.DATA_NASC = DATA_NASC;
        this.TELEFONE = TELEFONE;
        this.EMAIL = EMAIL;
        this.LOGIN = LOGIN;
        this.SENHA = SENHA;
        this.RUA = RUA;
        this.NUMERO = NUMERO;
        this.CEP = CEP;
        this.BAIRRO = BAIRRO;
        this.CIDADE = CIDADE;
        this.ESTADO = ESTADO;
        this.COMPLEMENTO = COMPLEMENTO;
    }

    public void cadastrar() throws ClassNotFoundException, SQLException {

        try {

            conexao = GerenciadorDeConexao.getConexao();

            CallableStatement cs = conexao.prepareCall("{ call CAD_CLI(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) }");
            //PARÂMETROS PARA A PROCEDURE
            cs.setString(1, NOME);
            cs.setInt(2, SEXO);
            cs.setString(3, RG);
            cs.setString(4, CPF);
            cs.setString(5, DATA_NASC);
            cs.setString(6, TELEFONE);
            cs.setString(7, EMAIL);
            cs.setString(8, LOGIN);
            cs.setString(9, SENHA);
            cs.setString(10, RUA);
            cs.setInt(11, NUMERO);
            cs.setString(12, CEP);
            cs.setString(13, COMPLEMENTO);
            cs.setString(14, BAIRRO);
            cs.setString(15, CIDADE);
            cs.setInt(16, ESTADO);

            //EXECUÇÃO DA PROCEDURE
            cs.execute();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: " + ex.toString());
        } finally {
            GerenciadorDeConexao.closeConexao(conexao);
        }

    }
}
