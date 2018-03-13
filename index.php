<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- meta tag to make it responsive -->
	<meta name="viewport" content="width=device-width, initial-scale = 1.0" >
	<meta http-equiv="x-UA-Compatible" content="ie=edge">
	<!-- *Link to bootstrap. *rather than installing the same. *for reloading of website -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
	<title>Teacher-->Tracker</title>
	<!-- link to google fonts used in this page -->
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond|Playfair+Display" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">
	<!-- link to style.css of this page -->
	<link rel="stylesheet" href="style.css">

	

</head>

<!-- AIM:: To display the current room of teacher as per the time table of a respective teacher.
	How it is achieved :: 
				*We will take teacher name, day of week, lecture number, branch of teacher from a user
				*Name of teachers is fetch from database and stored in drop down menu. 
				*drop down menu for branch, lecture number and day of week is written by us, as this value remanis static.
				*Next to this from containing drop down lists we have created a table that will give reequested output in tabular format
 -->

<body>
	<!-- database.php is included that consists of database connectivity code -->
	<?php include('database.php');?>
	<div class="heading">
		<span class="container">
			<div class="row">
				<div class="col-md-6">
					<p><br><br></p>
					<!-- heading of the page -->
					<h1>Teacher Tracker</h1>
					<p>Find your teacher here</p>
				</div>
				<div class="col-md-6">
					<img class="img-fluid" src="track.png" alt="">
				</div>
			</div>
		</span>		
	</div><br>
	<br>
	<br>
	<br>
	
<span class="container">
	<div class="row">
	<div class="col-md-5">
		<br>
		<br>
		<br>
		<br>
		
		<!--From is created to take the user input-->
		<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="GET">
		<!--echo htmlspecialchars($_SERVER["PHP_SELF"]); states that onsubmit values are return to a same page-->
			<table cellpadding="5px" align="center">
				<tr>
					<td>
						<label for="branch">Branch :</label>
					</td>
					<td>
						<!-- drop down list of branch (department) in a college -->
						<select name="branch" id="branch" onchange="getTeachers(this.value)">
							<option selected disabled value="">Select branch</option>
							<option value="CE">CE</option>
							<option value="IT">IT</option>
							<option value="EXTC">EXTC</option>
							<option value="MECH">MECH</option>
							<option value="PPT">PPT</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<label for="teacher">Name :</label>
					</td>
					<td>
						<script type="text/javascript">
							//code to populate dropdown dynamic
							function getTeachers(str){
							  if (str == "") {
     							   document.getElementById("teacher").innerHTML = "";
      							  return;
  							    } else { 
       									 if (window.XMLHttpRequest) {
      								    	  // code for IE7+, Firefox, Chrome, Opera, Safari
      								    	  xmlhttp = new XMLHttpRequest();
      									    } else {
           											 // code for IE6, IE5
         											   xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
     											   }
      										  xmlhttp.onreadystatechange = function() {
        										    if (this.readyState == 4 && this.status == 200) {
          										    	  document.getElementById("teacher").innerHTML = this.responseText;
          											 }
      											  };
      										  xmlhttp.open("GET","getTeachers.php?branch="+str,true);
      										  xmlhttp.send();
   										 }
									}
						</script>

						<div id="teacher"> 
							
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<label for="lecture">Lecture :</label>
					</td>
					<td>
						<!-- Drop down list for the nth lecture being conducted -->
						<select name="lecture" id="lecture">
							<option value="L1">1</option>
							<option value="L2">2</option>
							<option value="L3">3</option>
							<option value="L4">4</option>
							<option value="L5">5</option>
							<option value="L6">6</option>
							<option value="L7">7</option>
							<option value="" selected disabled>lecture no.</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<label for="day">Day :</label>
					</td>
					<td>
						<!-- drop down list for days of week -->
						<select name="day" id="day">
							<option selected disabled value="">select week day</option>
							<option value="Monday">Monday</option>
							<option value="Tuesday">Tuesday</option>
							<option value="Wednesday">Wednesday</option>
							<option value="Thursday">Thursday</option>
							<option value="Friday">Friday</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td>
						<button id="submit" name="submit">Submit</button>
					</td>
					<td>
						<button id="getTimetable" name="getTimetable">Get Time Table</button>
					</td>
				</tr>
			</table>
		</form>
		<br>
	</div>
	<div class="col-md-7">

		<!-- table to display the fetched data -->
		<table border="1" class="table">
			<?php
				//on submit this if condition is considered
				if(isset($_GET['submit'])) {
					echo "<br>
					<br>
					<br>
					<br>";
					//storing the selected teacher from drop down menu in $teacher
					@$teacher = $_GET['teachers'];
					//storing the selected weekday from drop down menu in $day
					@$day = $_GET['day'];
					//storing the selected lecture number from drop down menu in $lecture
					@$lecture = $_GET['lecture'];
					//storing the selected branch from drop down menu in $branch
					@$branch = $_GET['branch'];
					//sql qurey to GET the expected results as per data given by user
					$sql = "select name,$lecture from teachers_load where name = '$teacher' and day = '$day' and branch = '$branch'";
					$res = mysqli_query($dbcon,$sql);
					
					if ($branch == "" || $day == "" || $lecture == "" || $teacher == "") 
							echo "<script>alert('Please enter all the details.')</script>";
						else{
							echo "<tr>
									<th>Name</th>
									<th>Room no.</th>
								</tr>"	;
							while($row = mysqli_fetch_assoc($res)){
							/* as the values are fetch in table <tr> tags are put in while loop 
							that each new value is that each new value is printed on new line*/
							echo '<tr class="table">
									<td>'.$row['name'].'</td>
									<td>'.$row[$lecture].'</td>
								</tr>';
						}
					}
				}

			if(isset($_GET['getTimetable'])){
				@$teacher = $_GET['teachers'];
				$sql = "select * FROM teachers_load WHERE name='$teacher'";
				$res = mysqli_query($dbcon,$sql);
				if ($teacher == "") 
					echo "<script>alert('Please select the teacher.')</script>";
				else{
				echo "<h4>$teacher</h4>'";

				echo "
					<tr>
						<th>Day</th>
						<th>L1</th>
						<th>L2</th>
						<th>L3</th>
						<th>L4</th>
						<th>L5</th>
						<th>L6</th>
						<th>L7</th>	
					</tr>";

				while($row = mysqli_fetch_assoc($res)){
							/* as the values are fetch in table <tr> tags are put in while loop 
							that each new value is that each new value is printed on new line*/

							echo '<tr class="table">
									<td>'.$row['day'].'</td>
									<td>'.$row['L1'].'</td>
									<td>'.$row['L2'].'</td>
									<td>'.$row['L3'].'</td>
									<td>'.$row['L4'].'</td>
									<td>'.$row['L5'].'</td>
									<td>'.$row['L6'].'</td>
									<td>'.$row['L7'].'</td>
								</tr>';
						}
					}
			}
			?>
		</table>
	</div>
	</div>
</span>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://tether/1.4.3/js/tether.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<!--All the script before <body> and after </body> should be a standard layout of any html page if you use bootstraping on your website.
-->
</html>