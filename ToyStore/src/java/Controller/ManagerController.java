/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Product;

/**
 *
 * @author PC
 */
public class ManagerController extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            Object objacc = session.getAttribute("account");
             Account acc = (Account) objacc;
            if (objacc != null) {
               
                if (acc.getRoleid() == 2) {
                    ProductDAO p = new ProductDAO();
                    List<Product> lst = p.getallPro();
                    request.setAttribute("ListP", lst);

                    Product product = p.getOneProbyID(1);
                    request.setAttribute("product", product);
                    int page = 1;
                    int page_size = 9;
                    //totalpage
                    ProductDAO dao = new ProductDAO();
                    int totalProducts = dao.getallProbyID();
                    int totalPage = totalProducts / page_size;
                    if (totalProducts % page_size != 0) {
                        totalPage += 1;
                    }
                    request.setAttribute("totalproduct", totalProducts);
                    request.setAttribute("totalPage", totalPage);
                    //Setpage
                    String pag = request.getParameter("page");
                    if (pag != null) {
                        page = Integer.parseInt(pag);

                    }
                    ArrayList<Product> emp1 = dao.paging(page, page_size);

                    request.setAttribute("page", page);
                    request.getSession().setAttribute("URLHistory", "productcontrol");
                    request.setAttribute("ListP", emp1);
                    request.getRequestDispatcher("manager.jsp").forward(request, response);
                    
                }

            }
            if(objacc==null||acc.getRoleid()!=2){
                request.getRequestDispatcher("login").forward(request, response);
            }
            
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
