<?php include 'connection.php' ?>


<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="adminhome">Home</a>
    <a href="admin_manage_client">manage client</a>
    <a href="admin_manage_employee">manage employee</a>
    <a href="admin_manage_hr">manage hr</a>
    <a href="admin_manage_department">manage department</a>
    <a href="admin_view_vaccancy">view vaccancy</a>
    <a href="admin_view_trainee_appraisal">view trainee appraisal</a>
    <a href="admin_send_notification">Send Notification</a>
    <a href="admin_view_feedback">Feedback</a>
    <a href=""></a>
    <a href="/">Logout</a> -->
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>HR Management</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- Header -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="adminho.php">HR Management</a></h1>
      
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="adminhome.php">Home</a></li>
          <li><a class="nav-link scrollto" href="admin_manage_hr.php"> Hr</a></li>
          <li><a class="nav-link scrollto" href="hr_viewovertime.php"> OverTime</a></li>
           <li><a class="nav-link scrollto" href="hr_sendnotification.php">  Notification</a></li>
          <li><a class="nav-link scrollto" href="admin_viewevents.php">View Events</a></li>
          <li><a class="nav-link scrollto" href="admin_view_salary.php">View Salary</a></li>
            <li><a class="nav-link scrollto" href="admin_viewleave.php">View leave</a></li>
        
        
          <li><a class="nav-link scrollto" href="login.php">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->