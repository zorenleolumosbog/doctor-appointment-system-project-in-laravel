<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Pies Doctor Appointment</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>

<body>
    <div class="main-wrapper">
        <div class="header" style="background-color: black;">
            <div class="header-left">
                <a href="/index" class="logo">
                    <img src="assets/img/logo.png" width="35" height="35" alt=""> <span>Pies Doctor Appointment</span>
                </a>
            </div>
            <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
            <ul class="nav user-menu float-right">
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                        <span class="user-img">
                            <img class="rounded-circle" src="assets/img/user.jpg" width="24" alt="Admin">
                            <span class="status online"></span>
                        </span>
                        <span>Admin</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/Doctorprofile">My Profile</a>
                        <a class="dropdown-item" href="/editprofile">Edit Profile</a>
                        <a class="dropdown-item" href="/login">Logout</a>
                    </div>
                </li>
            </ul> 
        </div>
        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll" style="background-color: black;">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title">Main Navigation</li>
                        <li>
                            <a href="/index"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                        </li>
                        <li>
                            <a href="/Doctorprofile"><i class="fa fa-user-md"></i> <span>Profile</span></a>
                        </li>
                        <li >
                            <a href="/patienthistory"><i class="fa fa-user"></i> <span>Patients</span></a>
                        </li>
                        <li class="submenu">
                            <a href="#"><i class="fa fa-calendar-check-o"></i><span>Appointments</span> <span class="menu-arrow"></span></a>
                            <ul style="display: none;">
                                <li><a href="/addappointment">Add Appointments</a></li>
                                <li><a href="/updateappointment">Update Appointments</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/schedule"><i class="fa fa-clock-o"></i> <span>Doctor Schedule</span></a>
                        </li>
                        <li>
                            <a href="/payment"><i class="fa fa-money"></i> <span> Payments</span></a>
                        </li>
                        <li>
                            <a href="calender.html"><i class="fa fa-calendar"></i> <span>Booking Calender</span></a>
                        </li>

                        <li class="submenu">
                            <a href="#"><i class="fa fa-cog"></i><span>Setting</span> <span class="menu-arrow"></span></a>
                            <ul style="display: none;">
                                <li><a href="/hospitaldetails">Hospital Details</a></li>
                                <li><a href="/accessdetails">Access Details</a></li>
                                <li><a class="active" href="/manageusers">Manage Users</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-5 col-4">
                        <h4 class="page-title">User Details</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">
                        @if(isset($details))
                            <div class="row">
                                <div class="col-md-6">
                                @foreach($details as $user)

                                    <ul class="personal-info">
                                   
                                        <li>
                                            <span class="title">Name:</span>
                                            <span class="text">{{ $user->fname }} {{ $user->lname }}</span>
                                        </li>

                                        <li>
                                            <span class="title">Gender:</span>
                                            <span class="text">{{ $user->gender }}</span>
                                        </li>
                                        <li>
                                            <span class="title">Age:</span>
                                            <span class="text">{{ $user->Age }}</span>
                                        </li>
                                        <li>
                                            <span class="title">Phone:</span>
                                            <span class="text">{{ $user->phone }}</span>
                                        </li>
                                        <li>
                                            <span class="title">Email:</span>
                                            <span class="text">{{$user->email}}</span>
                                        </li>

                                        <li>
                                            <span class="title">Address:</span>
                                            <span class="text">12, colony name, city, state, pincode</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="personal-info">
                                        <li>
                                            <span class="title">Occupation:</span>
                                            <span class="text">{{$user->Occupation}}</span>
                                        </li>
                                        <li>
                                            <span class="title">Username</span>
                                            <span class="text">{{$user->username}}</span>
                                        </li>
                                        <li>
                                            <span class="title">Password:</span>
                                            <span class="text">{{$user->password}}</span>
                                        </li>
                                        <li>
                                            <span class="title">Height</span>
                                            <span class="text">6'2</span>
                                        </li>
                                        <li>
                                            <span class="title">Weight</span>
                                            <span class="text">60KG</span>
                                        </li>
                                        <li>
                                            <span class="title">Alternative Email:</span>
                                            <span class="text">{{$user->alt_email}}</span>
                                        </li>
                                    </ul>
                                </div>
                                @endforeach
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sidebar-overlay" data-reff=""></div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>