/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tristeza;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;

/**
 * Web application lifecycle listener.
 *
 * @author Okami
 */


public class Lissy implements ServletContextListener {
    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:tasks.db";
    
    public static Exception exception = null;
    
    
    public static Connection getConnection() throws Exception{
    return DriverManager.getConnection(URL);
    } 

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
        Class.forName(CLASS_NAME);
        Connection cn = getConnection();
        Statement state = cn.createStatement();
        state.execute("create table if not exists Renan_tasks("
                     +"name varchar not null unique"
                     +")");
        state.close();
        cn.close();
        }catch(Exception ex){}
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
