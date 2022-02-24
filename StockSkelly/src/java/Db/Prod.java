/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db;

import java.util.ArrayList;
import java.sql.*;
import Web.ProdListener;

/**
 *
 * @author Okami
 */
public class Prod {
    public static ArrayList<String> getProd() throws Exception{
        ArrayList<String> prodList = new ArrayList<>();
        Connection con = ProdListener.getConnection();
        Statement stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from prod");
        while(rs.next()){
            prodList.add(rs.getString("prodId"));
            prodList.add(rs.getString("prodNm"));
            prodList.add(rs.getString("prodProv"));
            prodList.add(rs.getString("prodMt"));
            prodList.add(rs.getString("prodSzT"));
            prodList.add(rs.getString("prodSzN"));
            prodList.add(rs.getString("prodVlAt"));
            prodList.add(rs.getString("prodVlMc"));
            prodList.add(rs.getString("prodQnt"));}
            
        
        rs.close();
        stmt.close();
        con.close();
        return prodList;
    }
    public static void addProd(String prodId, String prodNm, String prodProv, String prodMt, String prodSzT, String prodSzN,  String prodVlAt, String prodVlMc, String prodQnt) throws Exception{
    Connection con = ProdListener.getConnection();
    Statement stmt = con.createStatement();
    stmt.execute("insert into prod values('"+prodId+"','"+prodNm+"','"+prodProv+"','"+prodMt+"','"+prodSzT+"','"+prodSzN+"','"+prodVlAt+"','"+prodVlMc+"','"+prodQnt+"')");
    stmt.close();
    con.close();
    }
    public static void rmProd(String prodId) throws Exception{
    Connection con = ProdListener.getConnection();
    Statement stmt = con.createStatement();
    stmt.execute("delete from prod where prodId = '"+prodId+"'");
    stmt.close();
    con.close();
    }
}
