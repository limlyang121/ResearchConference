package SystemAdmin.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SystemAdmin.entity.SystemAdmin;
import general.Entity.User;
import SystemAdmin.entity.*;


@WebServlet (urlPatterns="/editUserAccountForm")
public class EditUserAccountFormController extends HttpServlet{
	
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        editUserAccount(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        try {
            updateNewUser(request, response);
            
        }catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    
    protected void editUserAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        String username = request.getParameter("cusername");
        String profileName = request.getParameter("cprofilename");
        SystemAdmin tempAdmin = new SystemAdmin();
        User temp = new SystemAdmin().readUser(username, profileName);
        request.setAttribute("userAccount", temp);
        List<User> userProf = tempAdmin.viewAllProfile();
        request.setAttribute("userProfileList", userProf);
        RequestDispatcher dispatcher = request.getRequestDispatcher("UserAccountForm.jsp");
        dispatcher.forward(request, response);
        
    }
    
    protected void updateNewUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String profilename = request.getParameter("profilename");
        String oldUserName = request.getParameter("cusername");
        String oldprofilename = request.getParameter("cprofilename");
        
        
        SystemAdmin temp = new SystemAdmin();
        
//      
        HttpSession session = request.getSession();
        
        if (temp.updateUser(username, password, name, email, profilename, oldUserName, oldprofilename)) {
            session.setAttribute("message", "Successfully Update User Account");
            response.sendRedirect("HomePage.jsp");
        }else {
            session.setAttribute("message", "Fail to Update User ");
            response.sendRedirect("HomePage.jsp");
        }
//      if (userAccount.checkUserNameExist()) {
//          session.setAttribute("message", "Fail to create User ");
//          response.sendRedirect("newUserAccount");
//          
//      }else {
//          userAccount.submitNewUser();
//          session.setAttribute("message", "Successfully create a User");
//          response.sendRedirect("HomePageAdmin.jsp");
//      }
        
        
    }
	
	
}
