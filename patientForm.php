<?php
$con = mysqli_connect("localhost", "root","") OR die("cannot connect");
$ver = mysqli_select_db($con, 'medicushds') OR die("Selection error");
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>replit</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
    <link href="formStyle.css" rel="stylesheet" type="text/css" />
    <script src="script.js"></script>
  </head>

  <body style ="background-image: url('test2.jpg')">
    <div class="logInContainer">
      <h1 style="font-size: 45px;"><img src="hospital.png" alt="Pineapple" style="width:150px;height:120px;margin-left:15px;" onclick = "location.assign('index.php')">Medicus HDS</h1>
      <h4>(A Hospital Database System)</h4>
      <p>Patient Form<hr></p>
      <div id="logIn" class="blurred-box"> 
        <form method="POST" action='<?php echo $_SERVER["PHP_SELF"];?>'>
            <label for="patient_ID">Patient ID</label>
			<input type="text" id="patient_ID" name="patient_ID">
			<br>
			<label for="blood_Type">Blood Type</label>
			<input type="text" id="blood_Type" name="blood_Type">
			<br>
			<label for="health_insurance">Health Insurance</label>
			<input type="text" id="health_Insurance" name="health_Insurance">
			<br>
			<label for="gender">Gender</label>
			<input type="text" id="gender" name="gender">
			<br>
			<label for="telephone">Telephone</label>
			<input type="text" id="telephone" name="telephone">
			<br>
			<label for="born">Date of Birth</label>
			<input type="text" id="born" name="born">
			<br>
			<label for="status">Status</label>
			<input type="text" id="status" name="status">
			<br>
			<label for="allergy">Allergy</label>
			<input type="text" id="allergy" name="allergy">
			<input type="submit" class="submitForm" value="Submit">
        </form>
      </div>
    </div>
	<?php
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
		// collect value of input field
			$patientID = $_POST['patient_ID'];
			$bloodType = $_POST['blood_Type'];
			$insurance = $_POST['health_Insurance'];
			$gender = $_POST['gender'];
			$telephone = $_POST['telephone'];
			$born = $_POST['born'];
			$patStatus = $_POST['status'];
			$allergy = $_POST['allergy'];
			
			if(empty($patientID) || empty($born)){
				die('Every field must be filled');
			}else{
				
				$sql = "INSERT INTO patient(Patient_ID, Blood_Type, Health_Insurance,Gender,Telephone, Date_Of_Birth, Status, Allergies) "."VALUES('$patientID','$bloodType','$insurance','$gender','$telephone','$born','$patStatus','$allergy')";
                
				$retval = mysqli_query($con,$sql);
				
				if(! $retval ) {
					die('Could not enter data: ' . mysqli_error($con));
				}
			}
		}
	?>
  </body>
</html>
