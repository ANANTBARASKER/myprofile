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
background-image :url("https://urbanmilwaukee.com/wp-content/uploads/2018/05/2017-03-27-13-56-58-1024x683.jpg");
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
<body >
<center>
    <br>
<form style="max-width:500px;margin:auto" method="post" action="BookingController" enctype="multipart/form-data">
  <h1 align="center"; style="color:white;">RESOURCE SUBMISSION</h1>
<br><br>
<center>
  <br><br>
    <div style="background-color: transparent;width: 100%";>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Patient Name" name="pname" title="Enter topic name" required>
  </div>
  



<div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Age" name="age" title="Enter title"required>
  </div>


<div class="input-container">
  <i class="fa fa-intersex icon"></i>
<select style="width:250px" name="option1"required>
<option value="male" >Male</option>
<option value="female">Female</option>
</select>
</div>
<div class="input-container">
  <i class="fas fa-building icon"></i>
  <input class="input-field" type="text" name="hname" placeholder="Hospital Name"required>
</div>
<div class="input-container">
  <i class="fa fa-building icon"></i>
  <input class="input-field" type="text" name="cname" placeholder="city"required>
</div>
<div class="input-container">
  <i class="fa fa- icon"></i>
<select style="width:250px"  name="option2"required>
    <option>Facility
        Required</option>
<option value="Scanning">Scanning</option>
<option value="Blood
Test" name="option2">Blood
Test</option>
<option value="Urine Test">Urine Test</option>
<option value="Thyroid">Thyroid</option>
</select>
</div>


    <div class="input-container">
    <i class="fa fa-upload icon"></i><input type="file" style="width:250px" name="data" placeholder="Select file" title="Upload Document" value="upload"></div>  
</center>
<br><br>
<center>
  <button type="submit" class="btn">Submit</button>
</center>
</form>
</div>
</center>
</body>
</html>
<!-- accept="image/*" -->
