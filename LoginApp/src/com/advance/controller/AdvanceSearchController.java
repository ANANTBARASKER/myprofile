package com.advance.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

/**
* Servlet implementation class BookingController
*/
@WebServlet("/AdvanceSearchController")
public class AdvanceSearchController extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             // TODO Auto-generated method stub
             response.setContentType("text/html");
           PrintWriter out = response.getWriter();
             String Name = request.getParameter("firstname");
             
            
             String Specialization = request.getParameter("sp");
             String City_name = request.getParameter("city");
             
            // String PWord = request.getParameter("");
   

           
              try {
               Class.forName("com.mysql.jdbc.Driver");
               // loads mysql driver

               Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
               System.out.println(con3);

               String query3 = "insert into AdvanceSearch(name,sp,city) values(?,?,?)";
             
               PreparedStatement ps3 = con3.prepareStatement(query3); // generates sql query
             
               ps3.setString(1, Name);
               ps3.setString(2, Specialization);
               ps3.setString(3, City_name);
               //ps2.setString(7, ConfirmPassword);
               
               
               
             

               ps3.executeUpdate(); // execute it on test database
               System.out.println("successfuly inserted");
               ps3.close();
               con3.close();
              } catch (ClassNotFoundException | SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
              }
              RequestDispatcher rd = request.getRequestDispatcher("doctor.jsp");
              rd.forward(request, response);
              
             }
           }
           
