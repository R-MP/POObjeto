<%-- 
    Document   : index
    Created on : 10 de fev de 2022, 21:01:20
    Author     : Okami
--%>
<%@page import="Db.Prods"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
  ArrayList<String> prodSpec = new ArrayList<>();
  
  if(request.getParameter("addProd")!=null){
       String prodId = request.getParameter("prodId");
       String prodNm = request.getParameter("prodNm");
       String prodQnt = request.getParameter("prodQnt");
       Prods.addProd(prodId, prodNm, prodQnt);
       response.sendRedirect(request.getRequestURI());
    }
  if(request.getParameter("rmProd")!=null){
       String prodId = request.getParameter("prodId");
       Prods.rmProd(prodId);
       response.sendRedirect(request.getRequestURI());
    }
       prodSpec =  Prods.getProd();
  
  
  /*Integer rm = 1;
  
  if(session.getAttribute("ProdRm")!=null){
  rm = Integer.parseInt(session.getAttribute("ProdRm").toString());
  }else{session.setAttribute("ProdRm", rm);} 
  
  if(session.getAttribute("StockTable")==null){
      prodSpec.add("57");prodSpec.add("Red Bull");prodSpec.add("008");
      //prodSpec.add(Integer.toString(rm));rm++;
      prodSpec.add("101");prodSpec.add("Blue Label");prodSpec.add("104");
      //prodSpec.add(Integer.toString(rm));rm++;
      prodSpec.add("988");prodSpec.add("Jagermeister");prodSpec.add("025");
      //prodSpec.add(Integer.toString(rm));rm++;
      
     session.setAttribute("StockTable",prodSpec);    
    }
    
    
if(request.getParameter("addProd")!=null){
  prodSpec = (ArrayList)session.getAttribute("StockTable");
  
  String prodId = request.getParameter("prodId");
  session.setAttribute("prodId", prodId);
  prodSpec.add((String)session.getAttribute("prodId"));
  
  String prodNm = request.getParameter("prodNm");
  session.setAttribute("prodNm", prodNm);
  prodSpec.add((String)session.getAttribute("prodNm"));
  
  String prodQnt = request.getParameter("prodQnt");
  session.setAttribute("prodQnt", prodQnt);
  prodSpec.add((String)session.getAttribute("prodQnt"));
  
  String prodRm = Integer.toString(rm); rm++;
  session.setAttribute("prodRm", prodRm);
  prodSpec.add((String)session.getAttribute("prodRm"));
  
  session.setAttribute("StockTable", prodSpec);
  }
  
  session.setAttribute("ProdRm", rm);*/
    
%>

<!DOCTYPE html>
<html dir="ltr" lang="pt">
  <head>
    <meta charset="utf-8">
    <title>Pen Drive</title>
  </head>
  <body>
    <h1>Tables</h1>
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
     if(i==4){
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

