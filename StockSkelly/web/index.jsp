<%-- 
    Document   : index
    Created on : 10 de fev de 2022, 21:01:20
    Author     : Okami
--%>
<%@page import="Web.ProdListener"%>
<%@page import="Db.Prod"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
  Exception requestException = null;
  ArrayList<String> prodSpec = new ArrayList<>();
  
  try{
  if(request.getParameter("addProd")!=null){
       String prodId = request.getParameter("prodId");
       String prodNm = request.getParameter("prodNm");
       String prodQnt = request.getParameter("prodQnt");
       Prod.addProd(prodId, prodNm, prodQnt);
       response.sendRedirect(request.getRequestURI());
    }
  if(request.getParameter("rmProd")!=null){
       String prodId = request.getParameter("prodId");
       Prod.rmProd(prodId);
       response.sendRedirect(request.getRequestURI());
    }
       prodSpec =  Prod.getProd();
    }catch(Exception ex){
       requestException = ex;
    }
    
%>

<!DOCTYPE html>
<html dir="ltr" lang="pt">
  <head>
    <meta charset="utf-8">
    <title>Pen Drive</title>
  </head>
  <body>
    <h1>Tables</h1>
    <%if(requestException!=null){%>
        <div style="color:red">
            Erro na execução do SQL:
            <%=requestException%>
        </div><br>
        <%}%>
    <form>
     <input type='text' name='tableName' placeholder='Table Name' required>
     <input type='submit' name='addTable' value='+'> // Not Functional
    </form>
<br>
    <form>
     <input type='text' name='prodId' placeholder='Product ID' required>
     <input type='text' name='prodNm' placeholder='Product Name' required>
     <input type='text' name='prodQnt' placeholder='Product Quantity' required>
     <input type='submit' name='addProd' value='+'>
    </form>
<br>
  <table border='1px'>
      <tr>
          <th>Tabela Exemplo</th>
      </tr>
  <tr>
     <th>Identificação</th>
     <th>Nome do produto</th>
     <th>Qtd</th>
  </tr>
  <tr>
     <%
    int i=-1;
    for(String j : prodSpec){
     i++;
     if(i==3){
     i = 0; %>
     <tr><%}%>
     <td><%=j%></td>
     
     <%}%>
     <%/*
        <form>
        <input type="hidden" name="taskName" value=" prodId "/>
        <input type="submit" name="rmProd" value="-"/>
      </form>
       */
     %>
  </tr>
  </table>
  </body>
</html>

