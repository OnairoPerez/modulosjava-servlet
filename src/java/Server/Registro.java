/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Server;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import Server.DataObject.UserInfo;
import Server.DataObject.UserAccount;
import Server.DataObject.JsonWriter;

/**
 *
 * @author onairo
 */
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
        request.getRequestDispatcher("/registro.html").forward(request, response);
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
        String name = request.getParameter("name");
        String birthdate = request.getParameter("birthdate");
        String cc = request.getParameter("cc");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String direction = request.getParameter("direction");
        String emailAccount = request.getParameter("emailAccount");
        String password = request.getParameter("passwordAccount");
        
        UserInfo user = new UserInfo(name, birthdate, cc, email, phone, direction);
        UserAccount account = new UserAccount(emailAccount, password);
        
        JsonWriter<UserInfo> userData = new JsonWriter<>();
        JsonWriter<UserAccount> userAccount = new JsonWriter<>();
        
        String valueUser = userData.saveData(UserInfo.class, user, "user_info.json");
        String valueAccount = userAccount.saveData(UserAccount.class, account, "user_account.json");
        
        String textResponse = "{ \"registered\" : false }";
        if ("done".equals(valueUser) && "done".equals(valueAccount)) {
            textResponse = "{ \"registered\" : true }";
        }
        
        response.setContentType("application/json");
        response.getWriter().write(textResponse);
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
