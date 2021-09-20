<%-- 
    Document   : index
    Created on : 20 de set de 2021, 16:55:17
    Author     : Okami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%double num = 0;%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RenanApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
         <%if(username==null){%>
        <h3><p style="color:blueviolet">  Você não possui permissão de acesso para ver este conteúdo, realize o login para obter permissão</p></h3>
        <%}else{%>
        <h2>Aqui estão seus números da sorte</h2>
        <%
        for(int i=0;i<=5;i++){
        num = Math.round(Math.random() * 100);
        %>
        <h2><%=num%></h2>
        <%}}%>
    </body>
</html>
