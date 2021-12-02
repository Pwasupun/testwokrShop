
    
        <?php
            include 'conn.php';

            
            $sql = "SELECT * FROM num"; 
            $query = mysqli_query($con,$sql);
            while($row = mysqli_fetch_assoc($query)){
                for($cout = 1; $cout<13;$cout++){
                    echo $row['idnum']." * ".$cout." = ".($row['idnum']*$cout)."<br/>";
                }
            }
        ?>
    
