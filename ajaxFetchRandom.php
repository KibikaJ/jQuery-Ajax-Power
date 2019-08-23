<?php 
// Include the database config file 
include_once("config.php");
$query = "SELECT * FROM tblstudent";
if (isset($_POST['cform_id'], $_POST['sform_id']) && $_POST['cform_id'] != '' && $_POST['cform_id'] !='') {

	//$sformId=htmlentities($_POST['sform_id'], ENT_QUOTES);
	//print_r($cformId);
    //print_r($_POST['sform_id']);
   $query .= ' 
   WHERE cform_id ="'.$_POST['cform_id'].'" AND sform_id = "'.$_POST['sform_id'].'" ORDER BY RAND() LIMIT 2';
//$query = "SELECT * FROM tblstudent WHERE sform_id ='{$sformId}' ORDER BY RAND() LIMIT 3";

//$query ="SELECT * FROM tblstudent WHERE cform_id ='.$_POST['cform_id'].' ORDER BY RAND()";
echo "<table border='1'>
<tr>
	<td align=center><b>Student ID</b></td>
	<td align=center><b>Name</b></td> 
	<td align=center><b>Address</b></td>";
	//$firstname=htmlentities($_POST['first_name'], ENT_QUOTES);
	$result = mysqli_query($dbcon, $query);
	 if(!mysqli_num_rows($result)) echo "no result";
  	While($row = mysqli_fetch_array($result))
	{
	 			echo "<tr>"; 
	 			echo "<td align=left>$row[0]</td>"; 
	 			echo "<td align=left>$row[1]</td>"; 
	 			echo "<td align=left>$row[4]</td>";
				 echo "</tr>"; 
			}
			echo "<table>"; 
}
?> 

