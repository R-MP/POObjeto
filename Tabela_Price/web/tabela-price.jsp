<%-- 
    Document   : tabela-price
    Created on : 13 de set de 2021, 16:01:59
    Author     : Okami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String holder = "-";
    String errorMessage = "";
    double v = 0; 
    double juros = 0;
    int t = 0;
    
          try{
              v = Integer.parseInt(request.getParameter("vi"));
              t = Integer.parseInt(request.getParameter("t"));
              juros = Integer.parseInt(request.getParameter("j"));
         }catch(Exception e){
              errorMessage = "Informe valores válidos";}
              
    double j = juros/100;  
    double var_juros = 0;
    double mort = 0;
    
    double pmt = Math.round((v*j)/(1-(1/(Math.pow((1+j),t))))*100.0)/100.0;
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
        <style>
            table {border-collapse: collapse; width: 100%; table-layout: fixed;}
            td, th{border: 2px solid black; text-align: left; padding: 8px;}
            tr:nth-child(even){background-color: #dddddd}
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <form action="tabela-price.jsp">
            <input type="number" name="vi" placeholder="Valor do emprestimo">
            <input type="number" name="t" placeholder="Num. de parcelas">
            <input type="number" name="j" placeholder="Juros">
            <input type="submit" value="Fazer Calculo">
            <input type="submit" formaction="index.jsp" value="Voltar">
        </form>
        <h5 style="color:red"><%=errorMessage%></h5>
        <br>
        <table>
            <tr background-color="red">
                <th>Período</th>
                <th>Saldo Devedor</th>
                <th>Parcela</th>
                <th>Juros (<%=juros%>%)</th>
                <th>Amortização</th>
            </tr>
            <tr>
                <th>0</th>
                <th><%=v%></th>
                <th>-</th>
                <th>-</th>
                <th>-</th>
            </tr>
      <%for(int i=1; i<=t; i++){
        var_juros = Math.round((v * j)*100.0)/100.0;
        v = Math.round((v - pmt + var_juros)*100.0)/100.0;
        mort = Math.round((pmt - var_juros)*100.0)/100.0;
        if(i == t){   
        %>
            <tr>
                <th><%=i%></th>
                <th>00.00</th>
                <th><%=pmt%></th>
                <th><%=var_juros%></th>
                <th><%=Math.round((mort+v)*100.0)/100.0%></th>
            </tr>
        <%}else{%>
            <tr>
                <th><%=i%></th>
                <th><%=v%></th>
                <th><%=pmt%></th>
                <th><%=var_juros%></th>
                <th><%=mort%></th>
            </tr>
        <%}}%>
        </table>
       
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>

