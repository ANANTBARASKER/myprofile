package com.book.controller;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
import javax.servlet.http.Part;

/**
* Servlet implementation class BookingController
*/
@WebServlet("/BookingController")
@MultipartConfig(maxFileSize = 16177215)
public class BookingController extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             // TODO Auto-generated method stub
             response.setContentType("text/html");
           PrintWriter out = response.getWriter();
             String Patient_Name = request.getParameter("pname");
             
             String Age = request.getParameter("age");
             String Gender = request.getParameter("option1");
             String Hospital_Name = request.getParameter("hname");
             String City = request.getParameter("cname");
             String Facility = request.getParameter("option2");
             InputStream inputStream=null; //input stream of the upload file
     
             
          // obtains the upload file part in this multipart request
             Part filePart = request.getPart("data");
             if (filePart != null) {
                 // prints out some information for debugging
                 System.out.println(filePart.getName());
                 System.out.println(filePart.getSize());
                 System.out.println(filePart.getContentType());
                  
                 // obtains input stream of the upload file
                 inputStream = filePart.getInputStream();
             }
             
             
             
   

             // validate given input
            if (Patient_Name.isEmpty() || Age.isEmpty() || Gender.isEmpty() || Hospital_Name.isEmpty() || City.isEmpty() || Facility.isEmpty()) {
              RequestDispatcher rd = request.getRequestDispatcher("booking.jsp");
              out.println("<font color=red>Please fill all the fields</font>");
              rd.include(request, response);
             } 
               else {
              // inserting data into mysql database 
              // create a test database and student table before running this to create table
              //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
              try {
               Class.forName("com.mysql.jdbc.Driver");
               // loads mysql driver

               Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
               System.out.println(con2);

               String query2 = "insert into Appointment(Patient_Name,Age, Gender,Hospital_Name,City,Facility,File) values(?,?,?,?,?,?,?)";
             
               PreparedStatement ps2 = con2.prepareStatement(query2); // generates sql query
             
               ps2.setString(1, Patient_Name);
               ps2.setInt(2, Integer.parseInt(Age));
               ps2.setString(3, Gender);
            
               ps2.setString(4, Hospital_Name);
              
               ps2.setString(5, City);
               ps2.setString(6, Facility);
               if (inputStream != null) {
                   // fetches input stream of the upload file for the blob column
                   ps2.setBlob(7, inputStream);
               }
               
               
               
             

               ps2.executeUpdate(); // execute it on test database
               System.out.println("successfuly inserted");
               ps2.close();
               con2.close();
              } catch (ClassNotFoundException | SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
              }
              RequestDispatcher rd = request.getRequestDispatcher("successbook.jsp");
              rd.forward(request, response);
             }
           }
           }
