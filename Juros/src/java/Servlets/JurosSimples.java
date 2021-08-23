/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Okami
 */
@WebServlet(name = "JurosSimples", urlPatterns = {"/juros-simples.html"})
public class JurosSimples extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Calculadora Juros Simples</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Juros Simples</h1>");
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            out.println("<form action='juros-simples.html'><br>");
            out.println("<input type='number' name='val_pr' placeholder='Valor Inicial'>");
            out.println("<input type='number' name='juros' placeholder='Juros'>");
            out.println("<input type='number' name='meses' placeholder='Meses'>");
            out.println("<input type='submit' name='Calcular'>");
            out.println("</form");
            double x = 0, y = 0;
            int z = 0;
            try{
                x = Double.parseDouble(request.getParameter("val_pr"));
                y = Double.parseDouble(request.getParameter("juros"));
                z = Integer.parseInt(request.getParameter("meses"));
            }catch(NumberFormatException ex){
            out.println("<h5><p style='color:blue'>Erro, informe o valor inicial, os juros e os meses para continuar</p></h3>");
            }
            double vl_fut = x*(1+(y/100)*z);
            out.println("<hr/>");
            if(z>1)
                out.println("<h3>O valor total com o juro simples acumulado em "+z+" meses será de: </h3>");
            else
                out.println("<h3>O valor total com o juro simples acumulado em "+z+" mês será de: </h3>");
            out.println("<hr/><h2>R$ "+new DecimalFormat( "#,###,###,##0.00" ).format(vl_fut)+"</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
