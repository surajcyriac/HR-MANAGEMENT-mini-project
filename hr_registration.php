<?php  include 'publicheader.php';


if (isset($_POST['submit'])) {
    extract($_POST);

    $q="insert into login values(null,'$uname','$passw','pending')";
    $id=insert($q);

    echo$q1="insert into hr values(null,'$id','$fname','$lname','$place','$phone','$email','$qualification','$dob','$gen')";
    insert($q1);
   alert('insertion successfully');
   return redirect('hr_registration.php');

}




?>



<!--  Section  -->
  <section id="hero" class="d-flex align-items-center" style="height: 900px">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
       

<br>
         <center>
    <form method="post">
        <h1> HR</h1>
        <br>
        <table class="table" style="width:500px;">
            <tr>
                <th>First Name</th>
                <td><input type="text"  name="fname" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><input type="text"  name="lname" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Place</th>
                <td><input type="text" name="place" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td><input type="text"  pattern="[0-9]{10}" name="phone" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><input type="email"  name="email" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Dob</th>
                <td><input type="date"  name="dob" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><input type="radio" name="gen" value="female">Female
                    <input type="radio" name="gen" value="male">male
                    <input type="radio" name="gen" value="other">Other
                </td>
            </tr>
            <tr>
                <th>Qualification</th>
                <td><input type="text"  name="qualification" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Username</th>
                <td><input type="text"  name="uname" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Password</th>
                <td><input type="password"  name="passw" required="" class="form-control"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" class="btn btn-success" name="submit" value="submit"></td>
            </tr>
        </table>

        
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End  -->

<?php include 'footer.php' ?>