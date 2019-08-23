<?php 
    // Include the database config file 
    include_once("Config.php"); 
    // Fetch all the student's class data 
    $classFormName = ''; 
    $query = "SELECT * FROM tblcform WHERE status = 1 ORDER BY cform_id ASC"; 
    $result = $dbcon->query($query); 
    if($result->num_rows > 0){ 
        while($row = $result->fetch_assoc()){  
            $classFormName .='<option value="'.$row['cform_id'].'">'.$row['cform_name'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">Class not available</option>'; 
    } 
?>

<!DOCTYPE html>
<html> 
  <head>
    <title>My list</title>
    <!--jQuery library --> 
    <script type="text/javascript" src="jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
$(document).ready(function(){
    $("#classform").change(function(){//on('change', function(){
        //console.log($(this).val()); 
        var countryID = $(this).val();
        if(countryID){
           $.ajax({
              type:'POST',
               url:'ajaxData.php',
              data:'cform_id='+countryID,
               success:function(html){
                $('#stream').html(html);
                //alert(html)
                }
            }); 
        }else{
          $('#stream').html('<option value="">Select Form first</option>'); 
        };
    });
    $("#classform").change(function(){
        //console.log($(this).val());
        var cform_id = $(this).val(); 
   $.ajax({	// create an ajax request to display.php 
        url:'ajaxFormData.php', 
        method:"POST", 
    data:{cform_id:cform_id},
	////datatype: "html", //expect html to be returned
	success: function(data) {
		$("#responsecontainer").html(data); 
			//alert(data); 
	}
	}); 
	}); 
 	$("#stream").change(function(){
        //console.log($(this).val());
        var sform_id = $(this).val(); 
   $.ajax({	// create an ajax request to display.php 
        url:"display.php", 
        method:"POST", 
       // type: "GET",
       // url: "display.php",
    data:{sform_id:sform_id},
	////datatype: "html", //expect html to be returned
	success: function(data) {
		$("#responsecontainer").html(data); 
			//alert(data); 
	}
	}); 
    }); 
    $("#filter").click(function(){
      console.log($(this).val()); 
      //if (filter_classform !='' && filter_stream !='')
      var cform_id = $('#classform').val(); 
      var sform_id = $('#stream').val(); 
        if (cform_id !='' && sform_id !='')
        {
           // var filter_classform = $(this).val();  
   $.ajax({	// create an ajax request to display.php 
        url:"ajaxFetchRandom.php", 
        method:"POST", 
       // type: "GET",
       // url: "display.php",
       data:{cform_id:cform_id, sform_id:sform_id},
   // data:{filter_classform:filter_classform, filter_stream:filter_stream},
	////datatype: "html", //expect html to be returned
	success: function(data) {
		$("#responsecontainer").html(data); 
            //alert(data); 
    }
    });
    }
    else
    {
           alert('Please select both values')
            //return false 
    }

	}); 
});
</script>
</head>
<body>
    
<!-- student's class dropdown -->
<!--<select id="classform">-->
<select id="classform">
 <option value="">Select Form</option>
    <?php echo $classFormName; ?>
</select>
<br/> 
<br/> 
<!-- Stream dropdown -->
<select id="stream">
 <option value="">Select form first</option>
</select>
<br/> 
<br/> 
<!--<form  action="#" method="post" >-->
<div class="form-class" align="left">
<button type="button" name="filter" id="filter">Randomize</button> 
</div> 
<!--</form>--> 
<h3 align="center">Manage User Details</h3>
<div id="responsecontainer" align="center">
</div>
</html>
</body> 