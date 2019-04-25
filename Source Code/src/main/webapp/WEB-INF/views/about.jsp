<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" isELIgnored="false" %>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
       <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
        crossorigin="anonymous">


    <style>
        body{
            font-family: 'Raleway', sans-serif;
        }
        .navbar {
            font-weight: 100;
            position: absolute;
            background: rgba(45, 52, 54, 0.9);
            top: 0;
            left: 0;
            right: 0;
            z-index: 3; 
        }
        .navbar .nav-item {
            font-size: 1.2rem; 
            }
        .center-cropped {
            width: 400px;
            height: 400px;
            background-position: center center;
            background-repeat: no-repeat;
        }
        #showcase {
            background: url("https://unsplash.com/photos/5bUmX-BI_KI/download?force=true") bottom center/cover no-repeat;
            min-height: 550px;
            position: relative; 
            }
        #showcase h1 {
            font-family: "Questrial", sans-serif;
            line-height: 1; 
            }
        #showcase #header {
            z-index: 2; 
            }
        #showcase #bookButton {
            font-size: 1.5rem;
            border-radius: 2rem; 
            }
        #showcase #overlay {
            background: rgba(0, 0, 0, 0.3);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1; 
            }
    </style>

    <title>About</title>
</head>

<body>
    <!--Nav Bar-->
    <nav class="navbar navbar-expand-md navbar-dark ">
        <div class="container">
            <a class="navbar-brand" href="redirectToHome">HolidayPlanner</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="redirectToHome">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contactSection">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="logout.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="showcase" class="d-flex align-items-center">
        <div id="overlay"></div>
        <div id="header" class="container text-white text-center">
            <h2 class="display-5 mb-0">TRAVEL WITH</h2>
            <h1 class="display-2">HOLIDAY PLANNER</h1>
            <p class="lead d-none d-md-block">Lorem ipsum dolor sit amet consectetur adipisicing elit.commodi! Laborum
                expedita laudantium quo. Odio, repellat ad.</p>
            <a href="redirectToHome" id="bookButton" class="btn btn-primary px-5">BOOK
                NOW</a>
        </div>
    </section>
    <section class="mt-5" id="about">
        <div class="container text-center">
            <h2>ALL YOUR TRAVEL SOLUTIONS</h2>
            <div class="row mt-3">
                <div class="col-md-4 p-3">
                    <i class="fas fa-map-marked fa-5x mb-3"></i>
                    <h3>Amenities You Want</h3>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ipsa aliquid rem
                        vero? Laborum dolores.</p>
                </div>
                <div class="col-md-4 p-3">
                    <i class="fas fa-tree fa-5x mb-3"></i>
                    <h3>Amenities You Want</h3>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ipsa aliquid rem
                        vero? Laborum dolores.</p>
                </div>
                <div class="col-md-4 p-3">
                    <i class="fas fa-plane fa-5x mb-3"></i>
                    <h3>Amenities You Want</h3>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero ipsa aliquid rem
                        vero? Laborum dolores.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="newsletter">
        <div class="container text-center mt-5">
            <h3>Gallary</h3>
            <h5 class="text-primary">#HOLIDAYPLANNER</h5>
            <div class="row mt-4">
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/zUn5p8IPad0/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/sxseRHe50ZE/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/4rDCa5hBlCs/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/BXasVMRGsuo/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/VNseEaTt9w4/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <img src="https://unsplash.com/photos/Cqe5Vvss-VQ/download?force=true" alt="" class="img-fluid center-cropped">
                </div>
            </div>
        </div>
    </section>
    <hr>
    <section id="contactSection">
        <div class="container mb-3">
            <h2 class="text-center">Contact</h2>
            <p>Email: help@holidayplanner.com</p>
            <p>Mobile: +91-1234567899</p>
            <p>Address: Pune, Hinjawadi.</p>
        </div>
    </section>
    <hr>
    <footer class="bg-dark mt-4">
        .
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>