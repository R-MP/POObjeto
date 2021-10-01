<%-- 
    Document   : renan
    Created on : 1 de out de 2021, 17:40:04
    Author     : Okami
--%>
<%@include file='WEB-INF/jspf/header.jspf'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Me</title>
        <style>
            .center{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width:40%;
            }
             
            table {border-collapse: collapse; width: 100%; table-layout: fixed;}
            
            td, th{border: 2px solid black; text-align: left; padding: 8px;}
            
            tr:nth-child(even){background-color: #dddddd}
        </style>
    </head>
    <body>
        <%if(username==null){%>
        <img src='https://cdn.discordapp.com/attachments/574428204165758979/892887321760915456/Novo_Projeto.png' class='center'>
        <%}else{%>
        <h1>Renan Miguel Pascon</h1>
        <h3>RA:	1290482012033
        <h3>Ingressado em Jan de 2020</h3>
        <h3><a href='https://github.com/R-MP/POObjeto'>GitHub<a/></h3>
        
        <table>
            <tr>
            <th>Sigla</th>    
            <th>Disciplina</th>    
            <th>Turma</th>    
            <th>Professor</th>    
            </tr>
            <tr>
            <td>IBD002</td>
            <td>Banco de Dados</td>
            <td>A</td>
            <td>SIMONE MARIA VIANA ROMANO</td>
            </tr>
            <tr>
            <td>IES300</td>
            <td>Engenharia de Software III </td>
            <td>A</td>
            <td>RENATA NEVES FERREIRA</td>
            </tr>
            <tr>
            <td>ILP007</td>
            <td>Programação Orientada a Objetos</td>
            <td>A</td>
            <td>RICARDO PUPO LARGUESA</td>
            </tr>
            <tr>
            <td>ILP512</td>
            <td>Linguagem de Programação IV</td>
            <td>A</td>
            <td>JÔNATAS CERQUEIRA DIAS</td>
            </tr>
            <tr>
            <td>ILP513</td>
            <td>Programação para Dispositivos Móveis</td>
            <td>A</td>
            <td>JOSEFFE BARROSO DE OLIVEIRA</td>
            </tr>
            <tr>
            <td>ISG003</td>
            <td>Segurança da Informação</td>
            <td>A</td>
            <td>VAGNER DOS SANTOS MACEDO</td>
            </tr>
            <tr>
            <td>ISO200</td>
            <td>Sistemas Operacionais II</td>
            <td>A</td>
            <td>FÁBIO PESSOA DE SÁ</td>
            </tr>
            <tr>
            <td>TTG001</td>
            <td>Metodologia da Pesquisa Científico-Tecnológica</td>
            <td>A</td>
            <td>SABRINA MARTINS BOTO</td>
            </tr>          
        <table/>    
    <%}%>
    </body>
</html>
