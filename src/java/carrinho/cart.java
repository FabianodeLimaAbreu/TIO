/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package carrinho;

import DAO.GerenciadorDeConexao;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.*;

/*
 * @author Fabiano de Lima
 */
public class cart {

    /*
     * PROPRIEDADES DA CLASSE CART
     */
    
    private int COD_CADASTRO;
    private String XML;
    private List RELATORIO_COMPRA;
        
    /*
     * VARIÁVEIS DE TRANSAÇÕES COM BANCO DE DADOS
     */
    String sql = null;
    ResultSet rs = null;
    Statement stmt = null;
    Connection conexao = null;

    public cart() {
    }
    
    public cart(int cod_cadastro, String xml) {

        COD_CADASTRO = cod_cadastro;
        XML = xml;
        
    }

    public List getRELATORIO_COMPRA() {
        return RELATORIO_COMPRA;
    }

    public void setRELATORIO_COMPRA(List RELATORIO_COMPRA) {
        this.RELATORIO_COMPRA = RELATORIO_COMPRA;
    }
    
    public void testeCart(String valor) {
        /*Metodo criado para teste da chamada do java*/
        JOptionPane.showMessageDialog(null, "Oia o metodo JAVA ai gente *-*: " + valor);
    }
    
    public void saveCart() throws ClassNotFoundException, SQLException{
        JOptionPane.showMessageDialog(null, "null");
        List relatorio_compra = new ArrayList();
        
        try {

            conexao = GerenciadorDeConexao.getConexao();

            CallableStatement cs = conexao.prepareCall("{ call INC_ITENS_COMPRA(?,?) }");
            //PARÂMETROS PARA A PROCEDURE
            cs.setString(1, XML);
            cs.setInt(2, COD_CADASTRO);
            
            //EXECUÇÃO DA PROCEDURE
            cs.execute();
            
            
            
            rs = cs.getResultSet();

            if (rs.next()) {

                relatorio_compra.add(rs.getString("NOME"));
                relatorio_compra.add(rs.getString("DATA"));
                relatorio_compra.add(rs.getString("COD"));
                relatorio_compra.add(rs.getString("VALOR"));

            }
            
            RELATORIO_COMPRA = relatorio_compra;

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: " + ex.toString());
        } finally {
            GerenciadorDeConexao.closeConexao(conexao);
        }
                             
    }
    
}