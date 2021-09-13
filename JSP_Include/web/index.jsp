<%-- 
    Document   : index
    Created on : 13 de set de 2021, 15:13:19
    Author     : Okami
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Including</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Pagina Inicial</h1>
        <h3><%= new Date() %></h3>
        <h3><a href="page.jsp">Página 1</a></h3>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
