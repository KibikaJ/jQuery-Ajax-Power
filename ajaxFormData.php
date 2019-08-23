<?php 
// Include the database config file 
include_once("config.php");

if (!empty($_POST['cform_id'])) {
	$cformId=htmlentities($_POST['cform_id'], ENT_QUOTES);
	//print_r($sformId);
	//print_r($_POST['sform_id']);
	$query = "SELECT * FROM tblstudent WHERE cform_id ='{$cformId}' ORDER BY RAND()";

echo "<table border='1'>
<tr>
	<td align=center><b>Student ID</b></td>
	<td align=center><b>Name</b></td> 
	<td align=center><b>Address</b></td>";
	//$firstname=htmlentities($_POST['first_name'], ENT_QUOTES);
	$result = mysqli_query($dbcon, $query);
	// if(!mysqli_num_rows($result)) echo "no result";
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

