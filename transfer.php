<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./style.css">  
<title>BANK</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">

                <nav class="navbar navbar-expand-sm bg-light">

                    <!-- Links -->
                    <img src="./images/logo.png" width="50px">
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="transfer.php">View</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="transfer.php">Transfer</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="history.php">History</a>
                      </li>
                    </ul>
                  
                  </nav>
            </div>
        </div>
    </div>
    <body style="background-color : white;">
<?php
    include 'dbcon.php';
    $sql = "SELECT * FROM view";
    $result = mysqli_query($con,$sql);
?>
    <div class="container">
        <h2 class="text-center pt-4" style="color : black;">Transfer Money</h2>
        <br>
            <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered" style="border-color:black;">
                        <thead style="color : black;">
                            <tr>
                            <th scope="col" class="text-center py-2">Id</th>
                            <th scope="col" class="text-center py-2">Name</th>
                            <th scope="col" class="text-center py-2">E-Mail</th>
                            <th scope="col" class="text-center py-2">Balance</th>
                            <th scope="col" class="text-center py-2">Transfer</th>
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr style="color : black;">
                        <td class="py-2"><?php echo $rows['id'] ?></td>
                        <td class="py-2"><?php echo $rows['name']?></td>
                        <td class="py-2"><?php echo $rows['email_id']?></td>
                        <td class="py-2"><?php echo $rows['balance']?></td>
                        <td><a href="user.php?id= <?php echo $rows['id'] ;?>"> <button type="button" class="btn btn-primary">Transact</button></a></td> 
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                    </div>
                </div>
            </div> 
         </div>
         <div class="container" style="background-color:#f8f9fa">
        <div class="row">
            <div class="col">
                <div class="footer">
                    <p style="text-align: center;">Copyright Sakshi Gaikwad@ 2021</p>
                </div>
                </div>
                </div>
                </div>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> 
</body>
</html>