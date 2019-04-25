<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <title>Welcome-Holiday Planner</title>

    <style>
        body{
            background:url("https://unsplash.com/photos/WksmEy5wV1s/download?force=true");
            font-family: 'Raleway', sans-serif;
            background-repeat: no-repeat;
            background-size : cover;
            height : 657px;
            width : 100%;
            background-position : center; 
            }
        #loginForm{
            width:400px;
            height:330px;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%);
            background: rgba(255,255,255, 0.9);
            text-align: center;
        }
        @media screen and (max-width: 600px) {
            .column {
            width: 100%;
            }
        }
    </style>

<script>
        function validateRegistrationForm(){
            var firstName = document.forms["registrationForm"]["firstName"].value;
            var lastName = document.forms["registrationForm"]["lastName"].value;
            var contactNumber = document.forms["registrationForm"]["contactNumber"].value;
            var s="rajan";
            if(!/^[a-zA-Z]*$/g.test(firstName))
            {
                alert('First Name should be alphabet only');
                return false;
            }
            if(!/^[a-zA-Z]*$/g.test(lastName))
            {
                alert('Last Name should be alphabet only');
                return false;
            }
            if(contactNumber.length!=10){
                alert('Invalid Contact Number');
                return false;
            }
            if(document.forms["registrationForm"]["password"].value.localeCompare(document.forms["registrationForm"]["confirmPassword"].value)){
                alert("Password and Confirm Password Should Match");
                return false;
            }
        }
    </script>
</head>

<body>
    <!--Nav Bar-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand font-weight-bold" href="#">HolidayPlanner</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                           
                        </li>
                        <li class="nav-item">
                           
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    <div id="loginForm" class="rounded">
        <div class="p-4">
            <h1 class="text-center">Login</h1>
            <form action="login.html" method="post" class="needs-validation">
                <div class="form-group">
                    <label for="emailId">Email</label> <input class="form-control" type="email" name="emailId" id="emailId"
                        placeholder="username@example.com" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label> <input class="form-control" type="password" name="password"
                        id="password" placeholder="Password" required>
                </div>
                <input class="btn btn-primary" type="submit" value="Login">
                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#registration">
                    New Registration
                </button>
            </form>
            ${registrationStatus}
            ${invalidPassword}
        </div>
    </div>

    <div class="modal fade" id="registration" tabindex="-1" role="dialog" aria-labelledby="registrationModal"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Registration Form</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="registration.html" method="post" id="registrationForm" onsubmit="return validateRegistrationForm()">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstName">First Name</label>
                                    <input class="form-control" type="text" name="firstName" id="firstName" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastName">Last Name</label>
                                    <input class="form-control" type="text" name="lastName" id="lastName" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="age">Age</label>
                                    <input class="form-control" type="number" name="age" id="age" min="18" max="120"
                                        required>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="gender">Gender</label>
                                    <select name="gender" class="custom-select" required>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="contactNumber">Contact Number</label>
                                    <input class="form-control" type="number" name="contactNumber" id="contactNumber"
                                        required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="emailId">Email</label>
                            <input class="form-control" type="email" name="emailId" id="emailId" required>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input class="form-control" type="password" name="password" id="password" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="confirmPassword">Confirm Password</label>
                                    <input class="form-control" type="password" name="confirmPassword" id="confirmPassword"
                                        required>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" form="registrationForm" class="btn btn-primary">Register</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>