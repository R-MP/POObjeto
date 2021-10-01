<%-- 
    Document   : renan
    Created on : 30 de set de 2021, 16:43:07
    Author     : Okami
--%>
<%@include file='WEB-INF/jspf/header.jspf'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if(username==null){%>
        <h1>Bloqueado</h1>
        <%}else{%>
        <h1>Informação fora do normal</h1>
        <%}%>
    </body>
</html>
