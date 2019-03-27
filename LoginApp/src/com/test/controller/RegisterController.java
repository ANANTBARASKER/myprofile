package com.test.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

/**
* Servlet implementation class RegisterController
*/
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             // TODO Auto-generated method stub
             response.setContentType("text/html");
           PrintWriter out = response.getWriter();
           String UserType = request.getParameter("Radio");
             String FirstName = request.getParameter("fname");
             String LastName = request.getParameter("lname");
             String YourEmail = request.getParameter("email");
             String YourAge = request.getParameter("age");
             String Gender = request.getParameter("radio1");
             String YourNumber = request.getParameter("phnumber");
             String PWord = request.getParameter("password");
             String ConfirmPassword = request.getParameter("confirm");

             // validate given input
             if (FirstName.isEmpty() || LastName.isEmpty() || YourEmail.isEmpty() || PWord.isEmpty() || ConfirmPassword.isEmpty()) {
              RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
              out.println("<font color=red>Please fill all the fields</font>");
              rd.include(request, response);
             } else {
              // inserting data into mysql database 
              // create a test database and student table before running this to create table
              //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
              try {
               Class.forName("com.mysql.jdbc.Driver");
               // loads mysql driver

               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
               System.out.println(con);

               String query = "insert into Studentr(UserType,FirstName,LastName, YourEmail,Yourage,Gender,YourNumber, PWord , ConfirmPassword) values(?,?,?,?,?,?,?,?,?)";
               String query1 = "insert into system(UserType,FirstName,LastName, UserName,Yourage,Gender,YourNumber, Password , ConfirmPassword) values(?,?,?,?,?,?,?,?,?)";
               PreparedStatement ps = con.prepareStatement(query); // generates sql query
               PreparedStatement ps1 = con.prepareStatement(query1);
               ps.setString(1, UserType);
               ps.setString(2, FirstName);
               ps.setString(3, LastName);
               ps.setString(4, YourEmail);
               ps.setInt(5, Integer.parseInt(YourAge));
               ps.setString(6, Gender);
              
               ps.setString(7, YourNumber);
               ps.setString(8, PWord);
               ps.setString(9, ConfirmPassword);
               
               
               ps1.setString(1, UserType);
               ps1.setString(2, FirstName);
               ps1.setString(3, LastName);
               ps1.setString(4, YourEmail);
               ps1.setInt(5, Integer.parseInt(YourAge));
               ps1.setString(6, Gender);
              
               ps1.setString(7, YourNumber);
               ps1.setString(8, PWord);
               ps1.setString(9, ConfirmPassword);

               ps.executeUpdate();
               ps1.executeUpdate();// execute it on test database
               System.out.println("successfuly inserted");
               ps.close();
               con.close();
              } catch (ClassNotFoundException | SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
              }
              RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
              rd.forward(request, response);
             }
           }
           }
