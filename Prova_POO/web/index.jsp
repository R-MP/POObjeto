<%-- 
    Document   : index
    Created on : 1 de out de 2021, 16:06:54
    Author     : Okami
--%>
<%@include file='WEB-INF/jspf/header.jspf'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
        <style>
            .center{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width:40%;
            }
            table {border-collapse: collapse; width: 20%; table-layout: fixed;}
            
            td, th{border: 2px solid black; text-align: center; padding: 6px;}
            
            tr:nth-child(even){background-color: #dddddd}
       
        </style>
    </head>
    <body>
        <%if(username==null){%>
        <img src='https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png' class='center'>
        <%}else{%>
       <h2>Lista de conexões (<%=duplicate.size()%>)</h2>
       <br>
       <table>
        <%for(int i = 0;i<duplicate.size();i++){%>
        <tr><td><%=duplicate.get(i)%></td></tr>
        <%}%>
            
        </table>
        <%}%>
    </body>
</html>
