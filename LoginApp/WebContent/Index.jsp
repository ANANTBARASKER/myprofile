<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head> 
              <meta name="viewport" content="width=device-width, initial-scale=1">

              <!-- Website CSS style -->
              <link href="style.css" type="text/css" rel="stylesheet"  >

              <!-- Website Font style -->
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
              
          
              <title>Admin</title>
       </head>
       <body>
              <div class="container">
                     <div class="row main">
                           <br>
                     <div class="main-login main-center">
                                  <form class="form-horizontal" method="post"  action="RegisterController">
                                         
                                          <div class="form-group">
               
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="radio-inline">
                                    <input type="radio" name="Radio" id="Radio" value="patient" ><B>PATIENT</B>
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="Radio" id="Radio" value="doctor"><B>DOCTOR</B>
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                                         
                                          
                                         <div class="form-group" >
                                               <label for="first name" class="cols-sm-2 control-label"><STRONG>FirstName</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                              <input type="text" class="form-control" name="fname" id="name"  placeholder="Enter your firstName" required/>
                                                       </div>
                                                </div>
                                        </div>
                                         <div class="form-group">
                                                <label for="last name" class="cols-sm-2 control-label"><STRONG>LastName</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                              <input type="text" class="form-control" name="lname" id="name"  placeholder="Enter your lastName"required/>
                                                       </div>
                                                </div>
                                         </div>

                                         <div class="form-group">
                                                <label for="email" class="cols-sm-2 control-label"><STRONG>Your Email</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                              <input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"required/>
                                                       </div>
                                                </div>
                                         </div>

                                         <div class="form-group">
                                                <label for="age" class="cols-sm-2 control-label"><STRONG>Your Age</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                              <input type="number" class="form-control" name="age" id="age"  placeholder="Enter your age"required/>
                                                       </div>
                                                </div>
                                         </div>
                                         
                                         <div class="form-group">
                    <label class="control-label col-sm-3"><STRONG>Gender</STRONG></label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="radio-inline">
                                    <input type="radio" name="radio1" id="femaleRadio" value="Female"required><strong>Female</strong>
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="radio1" id="maleRadio" value="Male"required><strong>Male</strong>
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                                         
                                           <div class="form-group">
                                                <label for="number" class="cols-sm-2 control-label"><STRONG>Your Number</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fas fa-phone"  aria-hidden="true"></i></span>
                                                              <input type="number" class="form-control" name="phnumber" id="number"  placeholder="Enter your number"required/>
                                                       </div>
                                                </div>
                                         </div>

                                         <div class="form-group">
                                                <label for="password" class="cols-sm-2 control-label"><STRONG>Password</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                              <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"required/>
                                                       </div>
                                                </div>
                                         </div>

                                         <div class="form-group">
                                                <label for="confirm" class="cols-sm-2 control-label"><STRONG>Confirm Password</STRONG></label>
                                                <div class="cols-sm-10">
                                                       <div class="input-group">
                                                              <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                              <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"required/>
                                                       </div>
                                                </div>
                                         </div>

                                         <div class="form-group ">
                                                <button type="submit" class="button">Register</button>
                                         </div>
                                  </form>
                           </div>
                     </div>
              </div>

              <script type="text/javascript" src="assets/js/bootstrap.js"></script>
       </body>
</html>

