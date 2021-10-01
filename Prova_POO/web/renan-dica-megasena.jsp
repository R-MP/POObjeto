<%-- 
    Document   : renan-dica-megasena
    Created on : 1 de out de 2021, 17:58:37
    Author     : Okami
--%>
<%@include file='WEB-INF/jspf/header.jspf'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
            .center{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width:40%;
            }
            table {border-collapse: collapse; width: 45%; table-layout: fixed;}
            
            td, th{border: 2px solid black; text-align: center; padding: 6px;}
            
            tr:nth-child(even){background-color: #dddddd}
       
        </style>
    </head>
    <body>
        <%if(username==null){%>
        <img src='https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png' class='center'>
        <%}else{%>
        <table>
            <tr>
        <%for(int i = 0;i<6;i++){
        
        %>
        <td><%=num_sena.get(i)%></td>
        <%}%>
            </tr>
        </table>
        <%}%>
    </body>
</html>
