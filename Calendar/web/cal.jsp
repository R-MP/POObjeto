<%-- 
    Document   : cal
    Created on : 5 de set de 2021, 21:18:32
    Author     : Okami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String sayit= "";
    String errorMessage;
    int mes = 6;
    int ano = 2021;
          try{
              mes = Integer.parseInt(request.getParameter("month"));
         }catch(Exception e){
              errorMessage = "O parâmetro: "+request.getParameter("month")+" não é um mês válido";}
          try{
              ano = Integer.parseInt(request.getParameter("year"));
         }catch(Exception f){
              errorMessage = "O parâmetro: "+request.getParameter("year")+" não é um ano válido";} 
   
              
              
              
              
   int chave_mes = 0;           
   if(mes == 1 || mes == 10){
   chave_mes = 1;
   }else if(mes == 2 || mes == 3 || mes == 11){
   chave_mes = 4;
   }else if(mes == 4 || mes == 7){
   chave_mes = 0;
   }else if(mes == 5){
   chave_mes = 2;
   }else if(mes == 6){
   chave_mes = 5;
   }else if(mes == 8){
   chave_mes = 3;
   }else if(mes == 9 || mes == 12){
   chave_mes = 6;
   }
              
              
   int r1 = (ano%100)/4;
   int r2 = (ano%100)%7;
   int chave_ano = (r1+r2)%7;  
   
   int fd= 1+chave_mes+chave_ano;
   int m_7 = fd/7;
   m_7 = m_7*7; 
   
   int jumps = 0;
   int first_day = fd - m_7;
   
   switch(mes) {
  case 1: sayit= "Calendário de Janeiro, "+ano; break;
  case 2: sayit= "Calendário de Fevereiro, "+ano; break;
  case 3: sayit= "Calendário de Março,"+ano; break;
  case 4: sayit= "Calendário de Abril,"+ano; break;
  case 5: sayit= "Calendário de Maio, "+ano; break;
  case 6: sayit= "Calendário de Junho, "+ano; break;
  case 7: sayit= "Calendário de Julho, "+ano; break;
  case 8: sayit= "Calendário de Agosto,"+ano; break;
  case 9: sayit= "Calendário de Setembro, "+ano; break;
  case 10: sayit= "Calendário de Outubro, "+ano; break;
  case 11: sayit= "Calendário de Novembro, "+ano; break;
  case 12: sayit= "Calendário de Dezembro, "+ano; break;
  
}
   
   switch(first_day) {
  case 1: jumps = 7; break;
  case 2: jumps = 1; break;
  case 3: jumps = 2; break;
  case 4: jumps = 3; break;
  case 5: jumps = 4; break;
  case 6: jumps = 5; break;
  case 0: jumps = 6; break;
}
   
    int dias_mes = 30;
    if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
    dias_mes = 31;
    }else if(mes == 4 || mes == 6 || mes == 9 || mes == 11){
    dias_mes = 30;
    }else if(mes == 2 && ano % 4 == 0){
    dias_mes = 29;
    }else {dias_mes=28;}
    
    int formatter = -1;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendario</title>
        <style> .box {width: 10%; 
                      padding-bottom: 10%; 
                      height: 0;}
                body {
                      background-image: url('https://media.discordapp.net/attachments/574428204165758979/884446201267752970/BackPupo.png');
                      background-repeat: no-repeat;
                      background-attachment: fixed;
                      background-size: cover;}
   </style>
    </head>
    <body>
        <h1><%=sayit%></h1>
        <form action="cal.jsp">
            <input type="number" name="month" min="1" max="12" placeholder="Mês">
            <input type="number" name="year" placeholder="Ano">
            <input type="submit" value="Carregar Calendário">
            <input type="submit" formaction="index.html" value="Voltar">
        </form>
        
        <hr/>
        <table border="1" cellspacing="5" cellpading="5" style="width:60%">
            <tr>
                <th style="width:10%">Domingo</th>
                <th style="width:10%">Segunda-Feira</th>
                <th style="width:10%">Terça-Feira</th>
                <th style="width:10%">Quarta-Feira</th>
                <th style="width:10%">Quinta-Feira</th>
                <th style="width:10%">Sexta-Feira</th>
                <th style="width:10%">Sábado</th>
                
            </tr>
            
            <tr>
          <%for(int k = 1;k<(jumps);k++){%>
                <td class="box"></td>
          <%formatter++;}%>

            
            
          <%for(int i = 1;i<=dias_mes;i++){
          formatter++;
          if(formatter % 7 ==0){%>
               <tr>
              <%}%>
          
                
                <td class="box"><%=i%></td>
               
          <%}%>
        </table>
    </body>
</html>
