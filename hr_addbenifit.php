<?php include 'hrheader.php';

if (isset($_POST['submit'])) {
    extract($_POST);

    echo$q="insert into benefits values(null,'$desig','$benefits','$des')";
    $id=insert($q);

   
   alert('insertion successfully');
   return redirect('hr_addbenifit.php');

}

?>

<!--  Section  -->
  <section id="hero" class="d-flex align-items-center" style="height: 700px">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">

<center>
    <form method="post">
        <h1>benefits</h1>
        <br>
        <table class="table" style="width:500px;">
          <tr>
            <td>Designation</td>
            <td><select name="desig" class="form-control">
              <option>--Select--</option>
              <?php

              $q="select * from designation";
              $res=select($q);
              foreach ($res as $row) {?>
               <option value="<?php echo $row['designation_id'] ?>"><?php echo $row['designation'] ?></option> 
             <?php } 



               ?>
            </select></td>
          </tr>
            <tr>
                <th>benefits</th>
                <td><input type="text"  name="benefits" required="" class="form-control"></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><input type="text"  name="des" required="" class="form-control"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" class="btn btn-success" name="submit" value="submit"></td>
            </tr>
        </table>
</form>
</center>
</div></div></div></section>


        <center><h1> benefits</h1>
        <table class="table" style="width:500px;">
            <tr>
                <th>Slno.</th>
                <th>Designation</th>
                <th>benefits</th>
                <th>Description</th>
              
                
                
            </tr>
            <?php
            $q="select * from benefits inner join designation using (designation_id)";
     $res=select($q);
     $sino=1;
         foreach ($res as $row) {?>
                <tr>
                   <td><?php echo $sino++ ?></td>
                   <td><?php echo $row['designation'] ?></td>
                   <td><?php echo $row['benefits'] ?></td>
                   <td><?php echo $row['description'] ?></td>

                     
                   
                 
                   
           
                </tr>
                <?php }?>

        </table>
    </form>
</center>
<?php include 'footer.php'?>