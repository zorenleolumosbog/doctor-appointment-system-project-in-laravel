
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
            <div class="sidebar-inner slimscroll" style="background-color: blue">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title">Main Navigation</li>
                        <li >
                            <a href="/index"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                        </li>
                        <li>
                            <a href="/Doctorprofile"><i class="fa fa-user-md"></i> <span>Profile</span></a>
                        </li>
						<li>
                            <a href="/patienthistory"><i class="fa fa-user"></i> <span>Patients</span></a>
                        </li>
                        <li class="submenu">
                            <a href="#"><i class="fa fa-calendar-check-o"></i><span>Appointments</span> <span class="menu-arrow"></span></a>
                            <ul style="display: none;">
                                <li><a href="/addappointment">Add Appointments</a></li>
                                <li><a class="active" href="/updateappointment">Update Appointments</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/schedule"><i class="fa fa-clock-o"></i> <span>Doctor Schedule</span></a>
                        </li>
                        <li>
                            <a href="/payment"><i class="fa fa-money"></i> <span> Payments</span></a>
                        </li>
                        <li>
                            <a href="/calender"><i class="fa fa-calendar"></i> <span>Booking Calender</span></a>
                        </li>
                        <li class="submenu">
                            <a href="#"><i class="fa fa-cog"></i><span>Setting</span> <span class="menu-arrow"></span></a>
                            <ul style="display: none;">
                                <li><a href="/hospitaldetails">Hospital Details</a></li>
                                <li><a href="/accessdetails">Access Details</a></li>
                                <li><a href="/manageusers">Manage Users</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
         <div class="page-wrapper">
          <div class="content">
    @if(isset($details))
        <h2>Send the Appointment Approval Details to <b> {{ $query }} </b>: </h3>
    <h3> Patient Appointment details:</h3>
    <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
    <table class="table table-striped custom-table">
        <thead>
            <tr>
                <th>Send Email</th>
                <th>PatientId</th>
                <th>AppointmentId</th>
                <th>Type</th>
                <th>Patient Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Doctor Name</th>
                <th>Reason</th>
                <th>Date</th>
                <th>Time</th>
                <th>Note</th>
                
            </tr>
        </thead>
        <tbody>
        <form  id ="check" method="post" action="{{ url('amail') }}">
      @csrf
            @foreach($details as $user)
            <tr>
            <td><button type="submit-btn" class="btn btn-success btn-block"  data-id='4'>send Email</button></td>
                <td>{{$user->PatientId}}
                <input type="hidden" name="pid" value="{{$user->PatientId}}" /></td>
                <td>{{$user->AppointmentId}}
                <input type="hidden" name="aid" value="{{$user->AppointmentId}}" /></td>
                <td>{{$user->atype}}
                <input type="hidden" name="atype" value="{{$user->atype}}" /></td>
                <td>{{$user->Patient_name}}
                <input type="hidden" name="pname" value="{{$user->Patient_name}}" /></td>
                <td>{{$user->email}}
                <input type="hidden" name="email" value="{{$user->email}}" /></td>
                <td>{{$user->phone}}
                <input type="hidden" name="phone" value="{{$user->phone}}" /></td>
                <td>{{$user->dob}}
                <input type="hidden" name="dob" value="{{$user->dob}}" /></td>
                <td>{{$user->gender}}
                <input type="hidden" name="gender" value="{{$user->gender}}" /></td>
                <td>{{$user->Doctor_name}}
                <input type="hidden" name="dname" value="{{$user->Doctor_name}}" /></td>
                <td>{{$user->Reason}}
                <input type="hidden" name="reason" value="{{$user->Reason}}" /></td>
                <td>{{$user->date}}
                <input type="hidden" name="date" value="{{$user->date}}" /></td>
                <td>{{$user->time}}
                <input type="hidden" name="time" value="{{$user->time}}" /></td>
                <td>{{$user->note}}</td>
                
            </tr>

            @endforeach
            </form>
        </tbody>
    </table>
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
    <script src="assets/js/app.js"></script>
    
</body>
</html>