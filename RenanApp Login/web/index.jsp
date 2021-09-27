<%-- 
    Document   : index
    Created on : 20 de set de 2021, 16:55:17
    Author     : Okami
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Random random = new Random();
  
  int megasena[] = new int[6];
  
    if(session.getAttribute("num1")==null){
     session.setAttribute("num1", random.nextInt(100));}
     int num1 = (int) session.getAttribute("num1");
     session.setAttribute("num1", num1);  
     
  if(session.getAttribute("num2")==null){
     session.setAttribute("num2", random.nextInt(100));}
     int num2 = (int) session.getAttribute("num2");
     session.setAttribute("num2", num2);

  if(session.getAttribute("num3")==null){
     session.setAttribute("num3", random.nextInt(100));}
     int num3 = (int) session.getAttribute("num3");
     session.setAttribute("num3", num3);
     
  if(session.getAttribute("num4")==null){
     session.setAttribute("num4", random.nextInt(100));}
     int num4 = (int) session.getAttribute("num4");
     session.setAttribute("num4", num4);
     
  if(session.getAttribute("num5")==null){
     session.setAttribute("num5", random.nextInt(100));}
     int num5 = (int) session.getAttribute("num5");
     session.setAttribute("num5", num5);
     
  if(session.getAttribute("num6")==null){
     session.setAttribute("num6", random.nextInt(100));}
     int num6 = (int) session.getAttribute("num6");
     session.setAttribute("num6", num6);

  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RenanApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
         <%if(authUser==null){%>
        <h3><p style="color:blueviolet">  Você não possui permissão de acesso para ver este conteúdo, realize o login para obter permissão</p></h3>
        <%}else{%>
        <h2>Aqui estão seus números da sorte</h2>
        <table>
        <th><%=num1%><th/>
        <th><%=num2%><th/>
        <th><%=num3%><th/>
        <th><%=num4%><th/>
        <th><%=num5%><th/>
        <th><%=num6%><th/>
        <%}%>
        </table>
    </body>
</html>
