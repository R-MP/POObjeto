<%-- 
    Document   : index
    Created on : 30 de set de 2021, 09:32:09
    Author     : Okami
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf"%>
<!DOCTYPE html>
<% 
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova</title>
        <style>
            .center{
                    display: block;
                    margin-left: auto;
                    margin-right: auto;
                    width: 50%;
    }
        </style>
    </head>
    <body>
        
        <%if(username==null){%>
        <img src="https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png" class="center">
        <%}else{
                      
           
           online_names.add(username);


           for(String i : online_names){
           if(!remove_dupe.contains(i)){
           remove_dupe.add(i);}};

           application.setAttribute("online_names",remove_dupe);
        %>
        <h1>Online agora</h1>
        
        <%=online%>   
        <%=session.getAttribute("session_id")%>   
        <%=remove_dupe%>   
        <%=online_names%>   
        
        <%}%>
    </body>
</html>
