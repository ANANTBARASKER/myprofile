<!-- <!DOCTYPE html>
<html>
<head>
<style type='text/css'>
table{
margin-top:250px;

}
</style>

<meta charset="ISO-8859-1">
</head>
<body>

<center>
<form type=get action="doctor.jsp">
<table>
<tr>

<td><input type=text name=firstname size=10></td>
</tr>


<tr>
<td colspan=2><input type=submit value="Submit">
</td>
</tr>
</table>
</form>
</center>
</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
<style type='text/css'>

.box{
    height: 30px;
    width: 500px;
}
.box1{
    height: 20px;
    width: 80px;
    color:green;

}
body
{
background-image:url("https://www.biospectrumindia.com/uploads/articles/1-11859.jpg");
background-repeat: no-repeat;
 
background-size: cover;
}
</style>

<meta charset="ISO-8859-1">

</head>
<body >
<br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<center>
   <form action="doctor.jsp">
<table >
<tr>
        <td><input class="box" type=text name=firstname size=40></td>
</tr>

<h1 style="color:black;">FIND YOUR DOCTOR</h1>



<tr>
       
<td colspan=6> <center><input class="box1" placeholder="SEARCH" type=submit  value="Submit"    size=20>

</center>
</td>

</tr>

</table>
</form>

 <button onclick="myFunction()">Advance search</button>

<script>
function myFunction() {
  location.replace("asearch.jsp")
}
</script>
</center>
</body>
</html>





