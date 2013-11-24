/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor..
 */

package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class GerenciadorDeConexao {

    private static final String DRIVER = "net.sourceforge.jtds.jdbc.Driver";
    private static final String URL = "jdbc:jtds:sqlserver://localhost:1433/Drummond;instance=SQLEXPRESS";
    private static final String USER = "sql";
    private static final String PASSWORD = "sql";

    public static Connection getConexao() throws SQLException, ClassNotFoundException{
    try{
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }catch (SQLException ex){
        StringBuffer mensagem = new StringBuffer("Não foi possível estabelecer "
                + "conexão com a base de dados");
        mensagem.append("\nMotivo:" + ex.getMessage());
        throw new SQLException(mensagem.toString());
    }
}

public static void closeConexao(Connection con) throws SQLException{
    closeConexao(con, null, null);
}

public static void closeConexao(Connection con, PreparedStatement stmt) throws SQLException{
    closeConexao(con, stmt, null);
}
public static void closeConexao(Connection con, PreparedStatement stmt, ResultSet rs) throws SQLException{
    try{
        if(rs != null){
            rs.close();
        }
        if(stmt != null){
            stmt.close();
        }
        if(con != null){
            con.close();
        }
    }catch (SQLException ex){
        StringBuffer mensagem = new StringBuffer("Não foi possível"
                +"finalizar a conexão com o banco de dados");
        mensagem.append("\nMotivo: "+ ex.getMessage());
        throw new SQLException(mensagem.toString());
        }
    }
}


