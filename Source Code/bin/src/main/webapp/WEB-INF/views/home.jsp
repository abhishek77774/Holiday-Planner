<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <title>Home</title>
    <style>
        body{
            font-family: 'Raleway', sans-serif;
            height : 100%;
            width : 100%;
        }
        #tourFormInput{
            position:absolute;
            z-index: 1;
            top:50%;
            left:50%;
            border-radius:35px;
            transform: translate(-50%, -50%);
            background: rgba(255,255,255, 0.8);
        }
        #backgroundCarousel{
            z-index: 0;
            position: absolute;
            left: 0;
            top: 0;
        }
        .backgroundImageSize{
            height : 657px;
            width : 100%;
        }
        #homePageNav{
        	z-index: 2;
        }
    </style>
    <script>
        function validateDetails() {
            var source = document.forms["newTourForm"]["source"].value;
            var destination = document.forms["newTourForm"]["destination"].value;
            var startingDate = document.forms["newTourForm"]["startingDate"].value;
            var endingDate = document.forms["newTourForm"]["endingDate"].value;
            var numberOfTourists = document.forms["newTourForm"]["numberOfTourists"].value;
            
            
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
            var yyyy = today.getFullYear();

            today = mm + '/' + dd + '/' + yyyy;
            
            if (!source.localeCompare(destination)) {
                alert("Please enter correct source and destination.");
                return false;
            }
            
            if (Date.parse(startingDate) < Date.parse(today) || Date.parse(endingDate) < Date.parse(today)) {
                alert("Please enter valid starting and ending dates.");
                return false;
            }
            
            if (Date.parse(startingDate) > Date.parse(endingDate)) {
                alert("Please enter valid starting and ending dates.");
                return false;
            }

            
        }
    </script>

</head>


<body>
    <!--Nav Bar-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark" id="homePageNav">
            <div class="container">
                <a class="navbar-brand font-weight-bold" href="#">HolidayPlanner</a>
              
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
           
                    <ul class="navbar-nav ml-auto">
                   
                    <li class="nav-item">
                            <a class="nav-link" href="redirectToHome"><span style="color:pink">Welcome. ${user.firstName}</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="redirectToHome">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="logout.html">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


    <div id="backgroundCarousel">
        <div id="carouselExampleControls" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active backgroundImageSize">
                    <img src="https://unsplash.com/photos/E7PlRr9ZfoM/download?force=true" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item backgroundImageSize">
                    <img src="https://unsplash.com/photos/HmCqzAGbV7Q/download?force=true" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item backgroundImageSize">
                    <img src="https://unsplash.com/photos/eSNjFDbw_i4/download?force=true" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item backgroundImageSize">
                    <img src="https://unsplash.com/photos/T-a8zcXigq4/download?force=true" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </div>
    <div id="tourFormInput" class="rounded p-4">
    <div class="container">
    </div>
    <div class="container">
        <h2>Tour Details</h2>
        <form action="newTour" method="POST" id="newTourForm" onsubmit="return validateDetails()">
            <div class="form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="source">Source</label>
                        <select name="source" class="form-control">
                            <option value="Gulmarg">Gulmarg</option>
                            <option value="Darjeeling">Darjeeling</option>
                            <option value="Mussoorie">Mussoorie</option>
                            <option value="Nainital">Nainital</option>
                            <option value="Manali">Manali</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="destination">Destination</label>
                        <select name="destination" class="form-control">
                            <option value="Darjeeling">Darjeeling</option>
                            <option value="Mussoorie">Mussoorie</option>
                            <option value="Nainital">Nainital</option>
                            <option value="Manali">Manali</option>
                            <option value="Gulmarg">Gulmarg</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="startingDate">Starting Date</label>
                        <input class="form-control" type="date" name="startingDate" id="startingDate" placeholder="mm-dd-yyyy"
                            required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="endingDate">Ending Date</label>
                        <input class="form-control" type="date" name="endingDate" id="endingDate" placeholder="mm-dd-yyyy"
                            required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="numberOfTourists">Number Of Tourists</label>
                        <select name="numberOfTourists" id="numberOfTourists" class="form-control" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="Submit and Generate Bill">
        </form>
        ${tourStatus}
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