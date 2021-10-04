<%-- 
    Document   : renan-dica-megasena
    Created on : 3 de out de 2021, 22:58:44
    Author     : Okami
--%>
<%@include file='WEB-INF/jspf/header.jspf'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dica Megasena</title>
        <style>
            .center{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width:40%;
            }
        </style>
    </head>
    <body>
        <%if(username==null){%>
        <img src="https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png" class="center"/>
        <%}else{%>
        <h1>Aqui estão seus numeros da sorte:</h1>
        <table border=2px>
            
        <%for(int i = 0; i<6;i++){%>
        <tr><td><%=megasena.get(i)%></td></tr>
        <%}%>
        </table
        <%}%>
    </body>
</html>
