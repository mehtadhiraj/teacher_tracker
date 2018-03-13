<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>getTeahers</title>
</head>
<body>
	
	<?php
		//query for fetching teachers name from [teachers] table in database
			include 'database.php';
			@$branch = $_GET['branch'];
			//echo $branch;
			$sql = "select name from teacher where branch = '$branch'";
			$res = mysqli_query($dbcon,$sql);
			//$teacher_arr = array();

			if(!$res)
				die(mysql_error());
			else{
				echo "<select id='teachers' name='teachers'>
							<option selected disabled>Select teacher</option>";
				//storing the result obtained in an array 
				while ($row=mysqli_fetch_assoc($res)) {
					//option tag used to add the element in dropdown list
					echo '<option>'.$row['name'].'</option>';		
				}
				echo "</select>";
			}
	?>
					
</body>
</html>