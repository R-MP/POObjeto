<%-- 
    Document   : index
    Created on : 30 de set de 2021, 14:51:52
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
        <h1>Sem acesso</h1>
        <%}else{%>
        <h1>Conexões</h1>
        <h1>Seu usuario: <%=username%></h1>
        <h2><%=duplicate%></h2>
        <h2>Sessões Ativas: <%=duplicate.size()%></h2>
        <%}%>
    </body>
</html>
