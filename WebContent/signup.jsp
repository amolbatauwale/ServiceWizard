<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Signup page</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2res.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/mainreg.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                
                <div class="card-body">
                    <h2 class="title">Registration Info</h2>
                    <form  action="signupprocess.jsp">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="uname" required="required">
                        </div>
                         <div class="input-group">
                            <input class="input--style-3" type="password" placeholder="password" name="upass" required="required">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text" placeholder="Birthdate" name="ubirthday" >
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="gender" required="required">
                                    <option disabled="disabled" selected="selected" >Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="email" placeholder="Email" name="uemail" required="required">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="mobile" name="uphone" required="required" maxlength="10">
                        </div>
                         <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="usque" required="required">
                                    <option disabled="disabled" selected="selected" >choose question</option>
                                    <option>what is your fevoirate crickter</option>
                                    <option>what is your childhood name</option>
                                    <option>What is the title and artist of your favorite song?</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                            </div>
                             <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Enter answer" name="usans" required="required">
                        </div>
                        <div class="p-t-10">
                        <center>
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                            <button class="btn btn--pill btn--green"type="button" onclick="window:location='loginuser.jsp'"></a>back</button>
                        </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jqueryreg.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2res.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->