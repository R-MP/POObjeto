<%-- 
    Document   : cata
    Created on : 27 de out de 2021, 13:41:21
    Author     : Okami
--%>

<%@page import="Package.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Data padrao = new Data();

  Data atual = new Data();
  atual.setDia(26);
  atual.setMes(6);
  atual.setAno(2021);

  Data Bday_Ren = new Data(7,3,2002);


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Classe Data</h1>
        <h3>Data padrão da classe
        <div><%=padrao.getDate()%></div></h3>
        <h3>Data atual
        <div><%=atual.getDate()%></div></h3>
        <h3>Data de aniversario - Renan
        <div><%=Bday_Ren.getDate()%></div></h3>
    </body>
</html>
