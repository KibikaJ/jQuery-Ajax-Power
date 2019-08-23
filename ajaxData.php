<?php 
// Include the database config file 
include_once("config.php");
 
if(!empty($_POST["cform_id"])){ 
    // Fetch stream data based on the specific class or form 
    $query = "SELECT * FROM tblsform WHERE cform_id = ".$_POST['cform_id']." AND status = 1 ORDER BY stream_name ASC"; 
    $result = $dbcon->query($query); 
     
    // Generate HTML of stream options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Select stream</option>'; 
         
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['sform_id'].'">'.$row['stream_name'].'</option>'; 
        } 
    } else { 
        echo '<option value="">Stream not available</option>'; 
    } 
} //elseif(!empty($_POST["state_id"])){ 
    // Fetch city data based on the specific state 
   // $query = "SELECT * FROM cities WHERE state_id = ".$_POST['state_id']." AND status = 1 ORDER BY city_name ASC"; 
    //$result = $dbcon->query($query); 
     
    // Generate HTML of city options list 
    //if($result->num_rows > 0){ 
       // echo '<option value="">Select city</option>'; 
        //while($row = $result->fetch_assoc()){  
           // echo '<option value="'.$row['city_id'].'">'.$row['city_name'].'</option>'; 
       // } 
    //}else{ 
       // echo '<option value="">City not available</option>'; 
   // } 
//} 
?>

