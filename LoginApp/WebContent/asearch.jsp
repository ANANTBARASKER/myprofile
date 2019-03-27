<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
width: 100%;
height: 610px;
font-family: Garamond; 
background:url("https://www.pixelstalk.net/wp-content/uploads/images1/Medical-Wallpapers-HD-Free-download.jpg");
background-size: 100% 100%}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 60%;
  margin-bottom: 10px;
}

.icon {
  padding: 10px;
  background:green;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 5px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: green;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
  width: 60%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body style="background-image: url(http://www.rrmch.org/blog/wp-content/uploads/2018/07/Trends-in-Healthcare-Sector-1.jpg)">
<center>
    <br>
<form action="doctor.jsp" style="max-width:500px;margin:auto" >

<br><br>
	<center>
	  <br><br>
	  <h1> Advance Search Form</h1>
	  <div style="background-color: transparent;width: 100%";>
	        <div class="input-container">
	          <i class="fa fa-user icon"></i>	          
	          <input name="firstname" class="input-field" type="text" placeholder="name" title="Enter topic name">
	        </div>
	
	
	<div class="input-container">
	  <i class="fas fa-stethoscope icon"></i>
	<select style="width:250px" name = "sp">
	<option value=" General Surgeon">General Surgeon</option>
	<option value="Orthopedics Surgeon">Orthopedics Surgeon</option>
	<option value="Dietitian">Dietitian</option>
	<option value="Consultations/Diagnostics">Consultations/Diagnostics</option>
	<option value="Health Checks/Speciality Clinics">Health Checks/Speciality Clinics</option>
	</select>
	</div>
	<div class="input-container" >
	        <i class="fas fa-building icon"></i>
	      <select style="width:250px" name="city">
	      <option value="Pune">Pune</option>
	      
	      </select>
	      </div>
	
	<center>
	  <button type="submit"   class="btn" >Submit</button>
	</center>
	
</form>
</div>

</center>
</body>
</html>
