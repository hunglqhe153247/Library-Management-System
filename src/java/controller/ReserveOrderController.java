/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modelDAO.BookDAO;
import modelDAO.ReserveOrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;
import model.Order;

/**
 *
 * @author Hung
 */
public class ReserveOrderController extends HttpServlet {

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
        ReserveOrderDAO dao = new ReserveOrderDAO();
        ArrayList<Order> orders = dao.getAll();
        ArrayList<Order> orderOfThisAccount = new ArrayList<Order>();
        BookDAO bdao = new BookDAO();
        ArrayList<Book> books = bdao.getAll();
        ArrayList<Book> reserved_books= new ArrayList<Book>();
        for(Order o:orders){
            if(o.getAccountId()==1){
                for(Book b:books){
                    if(b.getId()==o.getBookId())
                        reserved_books.add(b);
                }
            }
        }
        request.setAttribute("orderOfThisAccount", orderOfThisAccount);
        request.setAttribute("reserved_books", reserved_books);
        request.getRequestDispatcher("reserved_books.jsp").forward(request, response);
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
        int bookId = Integer.parseInt(request.getParameter("id"));
        long millis=System.currentTimeMillis();  
        java.sql.Date date=new java.sql.Date(millis);
        ReserveOrderDAO rdao = new ReserveOrderDAO();
        rdao.insertOrder(bookId, 1, date);
        
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
