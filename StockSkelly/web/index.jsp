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
       String prodProv = request.getParameter("prodProv");
       String prodMt = request.getParameter("prodMt");
       String prodSzT = request.getParameter("prodSzT");
       String prodSzN = request.getParameter("prodSzN");
       String prodVlAt = request.getParameter("prodVlAt");
       String prodVlMc = request.getParameter("prodVlMc");
       String prodQnt = request.getParameter("prodQnt");
    
       Prod.addProd(prodId, prodNm, prodProv, prodMt, prodSzT, prodSzN, prodVlAt, prodVlMc, prodQnt);
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
    <style>
      table, th, td {
        border: 1px solid white;
        border-collapse: collapse;
        border-radius: 5px;
        padding-left: 10px;
        padding-right: 10px;
        }
      td {
        background-color: #96D4D4;
        } 
      th{
        background-color: #1FD2D2;
        } 
    </style>
  </head>
  <body>
    <h1>Stock</h1>
    <%if(requestException!=null){%>
        <div style="color:red">
            Erro na execução do SQL:
            <%=requestException%>
        </div><br>
        <%}%>
    
<br>
    <form>
     <input type='number' name='prodId' placeholder='Product ID' required>
     <input type='text' name='prodNm' placeholder='Product Name' required>
     <input type='text' name='prodProv' placeholder='Provider' ><br>
     <input type='text' name='prodMt' placeholder='Material'>
     <input type='text' name='prodSzT' placeholder='Size(Text)'>
     <input type='text' name='prodSzO' placeholder='Size(Number)'><br>
     <input type='text' name='prodVlAt' placeholder='Product Value(Buy)'>
     <input type='text' name='prodVlMc' placeholder='Product Value(Sell)'>
     <input type='text' name='prodQnt' placeholder='Product Quantity' required>
     <input type='submit' name='addProd' value='+'>
    </form>
<br>
  <table>
      
  <tr>
     <th>Identificação</th>
     <th style="width:300px">Nome do produto</th>
     <th>Fornecedor</th>
     <th>Material</th>
     <th>Tamanho (Letra)</th>
     <th>Tamanho (Número)</th>
     <th>Valor Atacado</th>
     <th>Valor Mercado</th>
     <th>Quantidade</th>
  </tr>
  <tr>
     <%
    int i=0;
    String Id = "--";
    for(String j : prodSpec){
     %>
     <td><%=j%></td>
     <%i++;
     if(i==1){
     Id = j;} 
     if(i==9){
     i = 0; %>
     <td style="padding:0px;">
      <form>
        <input type="hidden" name="prodId" value="<%=Id%>"/>
        <input style="border-radius: 5px;" type="submit" name="rmProd" value="-"/>
      </form>
     </td>
  <tr><%}%>
     <%}%>
     
        
       
  </tr>
  </table>
  </body>
</html>

