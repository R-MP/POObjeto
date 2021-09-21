<%-- 
    Document   : about
    Created on : 20 de set de 2021, 16:56:38
    Author     : Okami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Me</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if(authUser==null){%>
        <h3><p style="color:red">  Você não possui permissão de acesso para ver este conteúdo, realize o login para obter permissão</p></h3>
        <%}else{%>
        <h1>Renan Miguel Pascon</h1>
        <h2>RA:1290482012033</h2>
        <br>
        <h2><a href='https://github.com/R-MP/POObjeto'>Meu GitHub<a/></h2>
        <h2><a href='https://github.com/R-MP/POObjeto/tree/main/RenanApp%20Login'>GitHub desse projeto<a/></h2>
        <br>
        <h4><a href='index.jsp'>Voltar<a/><h4/>
        <%}%>
        
    </body>
</html>
