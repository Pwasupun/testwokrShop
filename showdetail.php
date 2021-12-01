<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <title>shop</title>
</head>
<body>
    <?php include 'conn.php'; 
    
    $ID = $_GET['id'];
    ?>
    <div class="container">
        
        <?php
            include 'slidebar.php';
            include 'nav.php'; 
        ?>
        
            <table class="table ">
                <thead>
                    <tr>
                    <th scope="col">DETAILS</th>
                    </tr>
                </thead>
                <tbody class="row justify-content-md-center">
                    
                        <?php 
                            $sql = "SELECT * FROM product where pro_id=$ID";
                            $query = mysqli_query($con,$sql);
                            while($row = mysqli_fetch_assoc($query)){
                                echo 
                                
                                "<tr  class='row justify-content-md-center'>
                                        <td>".
                                            $row['pro_name']."
                                        </td>
                                        <td>
                                            <center>
                                                <img src='./img/computer/".$row['pro_img'].".jpg' width='300' height='300'/>
                                            </center>
                                        </td>
                                        <td>".
                                            $row['pro_details']."
                                        </td>
                                        <td>ราคา  ".
                                        number_format($row['pro_price'])." บาท"."
                                        </td>
                                        <td>
                                            <a href='cart.php?id=".$row['pro_id']."&act=add'>ใส่ตะกร้า</a>
                                        </td>
                                </tr>";
                            }
                        ?>
                    
                </tbody>
            </table>
                          
    </div>
    
</body>
</html>