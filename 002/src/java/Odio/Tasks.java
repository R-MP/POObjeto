/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Odio;

import java.util.ArrayList;
import java.sql.*;
import Tristeza.Lissy;

/**
 *
 * @author Okami
 */
public class Tasks {
    public static ArrayList<String> getTasks() throws Exception{
    ArrayList<String> list = new ArrayList<>();
    Connection cn = Lissy.getConnection();
    Statement state = cn.createStatement();
    ResultSet kleber = state.executeQuery("select * from Renan_tasks");
    while(kleber.next()){list.add(kleber.getString("name"));}
    
    kleber.close();
    state.close();
    cn.close();
    return list;
    }
    public static void addTask(String flavio) throws Exception{
    Connection cn = Lissy.getConnection();
    Statement state = cn.createStatement();
    state.execute("insert into Renan_tasks values('"+flavio+"')");
    state.close();
    cn.close();
    }
    
    public static void delTask(String flavio) throws Exception{
    Connection cn = Lissy.getConnection();
    Statement state = cn.createStatement();
    state.execute("delete from Renan_tasks where name = '"+flavio+"'");
    state.close();
    cn.close();
    }
}
