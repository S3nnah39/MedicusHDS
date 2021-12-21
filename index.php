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
    <link href="datamodStyle.css" rel="stylesheet" type="text/css" />
    <script src="script.js"></script>
  </head>

  <body style ="background-image: url('test2.jpg')">
    <div class="logInContainer" style="width:600px;height:500px; top: 7%; right: 10%">
      <h1 style="font-size: 45px;"><img src="hospital.png" alt="Hospital" style="width:150px;height:120px;margin-left:15px;" onclick = "location.assign('index1.php')">Medicus HDS</h1>
      <h4>(A Hospital Database System)<hr></h4>
      <div class="clearfix">  
        <div class="columns mainCont">
          <div id="tableSelected">
            <button type="button" class="btn" onclick = "location.assign('patientForm.php')">Patient</button>
            <button type="button" class="btn" disabled>Medical History</button>
            <button type="button" class="btn" onclick = "location.assign('medicineForm.php')" disabled>Medicine</button>
            <button type="button" class="btn" disabled>Operations</button>
            <button type="button" class="btn" disabled>Medical Equipment</button>
            <button type="button" class="btn" onclick = "location.assign('deptForm.php')">Department</button>
            <button type="button" class="btn" disabled>Employee</button>
            <button type="button" class="btn" disabled>Medical Staff</button>
          </div><hr>
          <div class="functionSelected">
            <button type="button" class="newEntry active" onclick="loadTable()">New Entry</button>
            <button type="button" class="modify" disabled>Modify</button>
            <button type="button" class="modifyTreatment" disabled>Modify Current Treatment</button>
            <button type="button" class="assignPhysician" disabled>Assign Primary Physician</button>
            <button type="button" class="scheduleOperation" disabled>Schedule Operation</button>
          </div><hr>

          <button type="button" class="signOut" onclick="location.assign('index.html')">Sign-Out</button>

        </div>
      </div>
    </div>

	<?php
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
		// collect value of input field
		$name = $_POST['deptName'];
		if (empty($name)) {
			echo "Name is empty";
		}   
		$sql = "INSERT INTO department(Name) "."VALUES('$name')";
            
        $retval = mysqli_query($con,$sql);
		if(! $retval ) {
           die('Could not enter data: ' . mysqli_error());
        }
	}
?>
    <script>
// Source: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_active_element
      console.log("Step 1");
      var header = document.getElementById("tableSelected");
      console.log("Step 2");
      console.log(document.getElementById("tableSelected").getElementsByClassName("btn"));
      var btns = document.getElementsByClassName("btn");
      console.log("Step 3")
      console.log(btns.length);
      for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
          var current = document.getElementsByClassName("active");
          current[0].className = current[0].className.replace(" active", "");
          this.className += " active";
        });
      }
    </script>
  </body>
</html>
