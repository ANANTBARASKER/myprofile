<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

      <head>
          <link rel="stylesheet" href="LoginPage.css" type="text/css"> 
        </head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.ggoogleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      
  </head>

<body> 
       
<br><br><br>
<div class="box"  border="1px solid #888">
<h1>Login </h1>
  <form action="LoginServlet" method="post">
  <b>UserID</b><br>
   <input type="text" name="userName" required>
   <br><br>
  <b>Password</b><br>
  <input type="password" name="password" required>
  <br><br>
  <input type="submit" name="submit" value="Login" class="button">
  <a href="Index.jsp" class="button">Register</a>
 
</form> 
</div>
<br><br><br><br>
<a href="help.jsp" class="button1" style="float: right;">Help</a>

</body>

</html>

