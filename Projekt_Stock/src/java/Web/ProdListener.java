/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
/**
 *
 * @author Okami
 */
public class ProdListener implements ServletContextListener{
    public static final String class_nm = "org.sqlite.JDBC";
    public static final String url = "jdbc:sqlite:prods.db";
    
    public static Exception exception = null;
    
    public static Connection getConnection() throws Exception{
    return DriverManager.getConnection(url);
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
             Class.forName(class_nm);
             Connection con = getConnection();
             Statement stmt = con.createStatement();
             stmt.execute("create table if not exists prods("
                     + "prodId int primary key,"
                     + "prodNm varchar(255),"
                     + "prodQnt int"
                     + ");");
             stmt.close();
             con.close();
             
        }catch(Exception ex){
        exception = ex;
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    } 
}
