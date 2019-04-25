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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <title>Choose Payment Method</title>
    <style>
        html {
            height: 100%;
        }
        body {
            background: url("https://unsplash.com/photos/5bUmX-BI_KI/download?force=true");
            height: 100%;
            width: 100%;
            font-family: 'Raleway', sans-serif;
        }
        input[type=radio] {
            width: 20px;
            height: 20px;
        }
        #billContainer {
            height: 600px;
            background: rgba(255, 255, 255, 0.8);
        }
        @media screen and (max-width: 992px) {
            #billContainer {
                height: 550px;
            }
        }
        @media screen and (max-width: 600px) {
            #billContainer {
                height: 520px;
            }
        }
    </style>

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

    <!--Content-->
    <div class="container" id="billContainer">
        <div>
            <div class="h1 pt-3 ml-3">Choose Payment Method</div>
            <hr>
        </div>
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold" type="button" data-toggle="collapse"
                            data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Credit/Debit Card
                        </button>
                    </h2>
                </div>
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                    data-parent="#accordionExample">
                    <div class="card-body">
                        <form action="paymentSuccess.html" method="POST" id="creditDebitCard" class="mb-0">
                            <div class="row">
                                <div class="col-md-6 mt-1">
                                    <div class="form-check">
                                        <label>Debit/Credit Card Number </label>
                                        <input type="number" class="form-control" name="cardNumber"
                                            placeholder="Enter Card Number" required>
                                    </div>
                                </div>
                                <div class="col-md-6 mt-1">
                                    <div class="form-check">
                                        <label>Card Holder Name</label>
                                        <input type="text" class="form-control" name="nameOnCard"
                                            placeholder="Name on Card" required>
                                    </div>
                                </div>
                                <div class="col-md-6 mt-1">
                                    <div class="form-check">
                                        <label>CVV Number</label>
                                        <input type="number" class="form-control" name="cvv"
                                            placeholder="Enter 3 digits CVV" required>
                                    </div>
                                </div>
                                <div class="col-md-6 mt-1">
                                    <div class="form-check">
                                        <label>Card Expiry Date</label>
                                        <input type="date" class="form-control" name="cardDate"
                                            placeholder="Enter Card Expiry Date" required>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mt-2 flex-row-reverse">
                                <a href="home" class="btn btn-primary m-1">Cancel</a>
                                <input type="submit" class="btn btn-primary m-1">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            NetBanking
                        </button>
                    </h2>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                    <div class="card-body">
                        <form id="onlinePaymentPage" class="mb-0" action="paymentSuccess.html" method="POST">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="SBI" name="radioButton" class="custom-control-input" required>
                                <label class="custom-control-label" for="SBI">SBI</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="ICICI" name="radioButton" class="custom-control-input" required>
                                <label class="custom-control-label" for="ICICI">ICICI</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="HDFC" name="radioButton" class="custom-control-input" required>
                                <label class="custom-control-label" for="HDFC">HDFC</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="Other" name="radioButton" class="custom-control-input" required>
                                <label class="custom-control-label" for="Other">Other</label>
                            </div>
                            <div class="d-flex mt-2 flex-row-reverse">
                                <a href="home" class="btn btn-primary m-1">Cancel</a>
                                <input type="submit" class="btn btn-primary m-1">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingThree">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold collapsed" type="button" data-toggle="collapse"
                            data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            UPI
                        </button>
                    </h2>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                    <div class="card-body">
                        <form id="upiForm" class="mb-0" action="paymentSuccess.html" method="POST">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="Paytm UPI" name="radioButton1" class="custom-control-input" required>
                                <label class="custom-control-label" for="Paytm UPI">Paytm UPI</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="BHIM UPI" name="radioButton1" class="custom-control-input" required>
                                <label class="custom-control-label" for="BHIM UPI">BHIM UPI</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="PhonePe UPI" name="radioButton1" class="custom-control-input" required>
                                <label class="custom-control-label" for="PhonePe UPI">PhonePe UPI</label>
                            </div>
                            <div class="d-flex mt-2 flex-row-reverse">
                                <a href="home" class="btn btn-primary m-1">Cancel</a>
                                <input type="submit" class="btn btn-primary m-1">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>
