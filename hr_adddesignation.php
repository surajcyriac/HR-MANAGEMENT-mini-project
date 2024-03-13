<?php include 'hrheader.php';

if (isset($_POST['submit'])) {
    extract($_POST);

    echo$q="insert into designation values(null,'$designation')";
    $id=insert($q);

   
   alert('insertion successfully');
   return redirect('hr_adddesignation.php');

}

?>

<!-- Section -->
  <section id="hero" class="d-flex align-items-center" style="height: 700px">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">

<center>
    <form method="post">
        <h1>designation</h1>
        <br>
        <table class="table" style="width:500px;">
            <tr>
                <th>designation</th>
                <td><input type="text"  name="designation" required="" class="form-control"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" class="btn btn-success" name="submit" value="submit"></td>
            </tr>
        </table>
</form>
</center>
</div></div></div></section>


        <center><h1> designation</h1>
        <table class="table" style="width:500px;">
            <tr>
                <th>Slno.</th>
                <th>designation</th>
              
                
                
            </tr>
            <?php
            $q="select * from designation";
     $res=select($q);
     $sino=1;
         foreach ($res as $row) {?>
                <tr>
                   <td><?php echo $sino++ ?></td>
                   <td><?php echo $row['designation'] ?></td>
                     
                   
                 
                   
           
                </tr>
                <?php }?>

        </table>
    </form>
</center>
<?php include 'footer.php'?>