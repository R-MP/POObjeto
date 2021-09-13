<%-- 
    Document   : page
    Created on : 13 de set de 2021, 15:34:22
    Author     : Okami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diretivas JSP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 1</h2>
        <h3><a href="index.jsp">Voltar</a></h3>
        <div>
            Outra pagina
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>