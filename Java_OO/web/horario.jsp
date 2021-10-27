<%-- 
    Document   : horarios
    Created on : 26 de out de 2021, 22:32:43
    Author     : Okami
--%>
<%@page import="Package.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Horario padrao = new Horario();

  Horario atual = new Horario();
  atual.setHoras(21);
  atual.setMin(42);
  atual.setSeg(8);

  Horario intervalo = new Horario(16,20,0);


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horarios</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Classe Horario</h1>
        <h3>Horario padrão da classe</h3>
        <div><%=padrao.getTime()%></div>
        <h3>Horario atual</h3>
        <div><%=atual.getTime()%></div>
        <h3>Horario intervalo</h3>
        <div><%=intervalo.getTime()%></div>
    </body>
</html>
