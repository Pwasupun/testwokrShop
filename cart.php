<?php
	session_start();
	
  
	$p_id = $_GET['id']; 
	$act = $_GET['act'];

	if($act=='add' && !empty($p_id))
	{
		if(isset($_SESSION['cart'][$p_id]))
		{
			$_SESSION['cart'][$p_id]++;
		}
		else
		{
			$_SESSION['cart'][$p_id]=1;
		}
	}

	if($act=='remove' && !empty($p_id))  //ยกเลิกการสั่งซื้อ
	{
		unset($_SESSION['cart'][$p_id]);
	}

	if($act=='update')
	{
		$amount_array = $_POST['amount'];
		foreach($amount_array as $p_id=>$amount)
		{
			$_SESSION['cart'][$p_id]=$amount;
		}
	}
?>

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
    <div class="container">
        <?php
            include 'conn.php'; 
            include 'slidebar.php';
            include 'nav.php'; 
        ?>

        <form id="frmcart" name="frmcart" method="post" action="?id=null&act=update">
            <table class="table">
                <thead>
                    <tr>
                        <td>
                            ตะกร้าสินค้า
                        </td>
                    </tr>
                    <tr>
                        <td>สินค้า</td>
                        <td>ราคา</td>
                        <td>จำนวน</td>
                        <td>รวม(บาท)</td>
                        <td>ลบ</td>
                    </tr>
                </thead>
                <tbody>
            <?php
            $total=0;
            if(!empty($_SESSION['cart']))
            {
                    
                        
                foreach($_SESSION['cart'] as $p_id=>$qty)
                {
                    $sql = "select * from product where pro_id=$p_id";
                    $query = mysqli_query($con, $sql);
                    $row = mysqli_fetch_array($query);
                    $sum = $row['pro_price'] * $qty;
                    $total += $sum;
                    echo "<tr>".
                            "<td>" . $row['pro_name'] . "</td>
                            <td>".number_format($row['pro_price'])."</td>
                            <td>
                                <input type='text' name='amount[$p_id]' value='$qty' size='2'/>

                            </td>
                            <td>".number_format($sum)."</td>"
                            // remove product 
                            ."<td>
                                <a href='cart.php?id=$p_id&act=remove'>ลบ</a>
                            </td>
                        </tr>";
                }
                    echo "<tr>
                            <td><b>ราคารวม</b></td>
                            <td></td>
                            <td></td>
                            <td>".number_format($total)."</td>
                            <td></td>
                        </tr>";
            }
            ?>          
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">ช่องทางการจ่ายงิน</label>
                                        <select class="form-control" id="exampleFormControlSelect1">
                                            <option>Fexde</option>
                                            <option>UPS</option>
                                        </select>
                                </div>
                            </td>
                            <td></td>
                            
                        </tr>
                        <tr>
                            <td><a href="index.php">กลับหน้ารายการสินค้า</a></td>
                            <td></td>
                            <td></td>
                           
                            <td>
                                <input type="submit" name="button" id="button" value="แก้ไข" />
                                <input type="button" name="Submit2" value="สั่งซื้อ" onclick="window.location='index.php';" />
                            </td>
                            <td></td>
                        </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>