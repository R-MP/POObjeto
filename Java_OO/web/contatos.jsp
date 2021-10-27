<%-- 
    Document   : contatos
    Created on : 27 de out de 2021, 14:33:24
    Author     : Okami
--%>
<%@page import="Package.Data"%>
<%@page import="Package.ListContatos"%>
<%@page import="Package.ListConBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
  try{
    if(request.getParameter("form-up")!=null){
    String nome = request.getParameter("nome");
    String tel = request.getParameter("tel");
    Data nasc = new Data(
     Integer.parseInt(request.getParameter("dia")),
     Integer.parseInt(request.getParameter("mes")),
     Integer.parseInt(request.getParameter("ano")));
    ListContatos x = new ListContatos(nome, tel, nasc);
    ListConBase.getListaBase().add(x);
    response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("form-down")!=null){
    ListConBase.getListaBase().remove(Integer.parseInt(request.getParameter("index")));
    response.sendRedirect(request.getRequestURI());
    }
 
  }catch(Exception error){};
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Contatos</title>
        
        <style>
            table{width:50%;}
            td{text-align: center;}
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Lista de Contatos</h1>
          <form>
            <fieldset>
                <legend>Novo contato</legend>
                Nome:<br/><input type="text" name="nome"/><br/>
                Telefone:<br/><input type="text" name="tel"/><br/>
                Data de nascimento:<br/>
                <input type="number" name="dia"/>/
                <input type="number" name="mes"/>/
                <input type="number" name="ano"/>
                <br/><br/>
                <input type="submit" name="form-up"/>
            </fieldset>
        </form>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Nascimento</th>
                <th>Remover</th>
            </tr>
            <%for(ListContatos x: ListConBase.getListaBase()){%>
            <tr>
                <td><%=x.getNome()%></td>
                <td><%=x.getNum()%></td>
                <td><%=x.getNasc().getDate()%></td>
                    <td><form>
                            <input type="submit" name="form-down" value="X"/>
                            <input type="hidden" name="index" value="<%=ListConBase.getListaBase().indexOf(x)%>"/>
                    </form></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
