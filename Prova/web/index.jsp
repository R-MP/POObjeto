<%-- 
    Document   : index
    Created on : 3 de out de 2021, 22:26:31
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
                width: 40%;
            }
        </style>
    </head>
    <body>
        <%if(username==null){%>
        <img src="https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png" class="center"/>
        <%}else{%>
        <h1>Lista de conexões (<%=nomes_lista.size()%>)</h1>
        <table border=2px>
        <%for(int i =0; i<nomes_lista.size();i++){%>
        <tr><td><%=nomes_lista.get(i)%></td></tr>
        <%}%>
        </table
        <%}%>
    </body>
</html>
