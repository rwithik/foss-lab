<?php

session_start();

$error = 0;
$_SESSION['success'] = 0;

if (isset($_POST['submit'])){
	if(empty($_POST['answer'])){
		$error = -1;
	}
	elseif(strcasecmp($_SESSION['answer'], $_POST['answer'])){
		$_SESSION['success'] = 1;
		header('location: success.php');
	}
	else{
		$error = 1;
	}
}

if(!isset($_SESSION['questions']) || $_SESSION['answers']){

	$f = fopen("myfile.txt","r");
  	$questions = array();
  	$answers = array();

  	while(! feof($f))  {  
  		// Read from file to the questions and answers arrays.
		$result = fgets($f);
		array_push($questions, $result);
		$result = fgets($f);
		array_push($answers, $result);
		$blank = fgets($f);
  	}
  	fclose($f);
  	// Store the arrays in session variables. 
  	$_SESSION['questions'] = $questions;
  	$_SESSION['answers'] = $answers;
}

?>

<html>
<head><title>Questions</title></head>
<body style="text-align: center; margin-top: 30vh">
	<?php 
		// Select a random question number
		$no = rand(1, 28);
		echo $no;
		// Store the correct answer in a session variable.
		$_SESSION['answer'] = $answers[$no];
		echo $questions[$no];
	?>
	<form method="post" action="questions.php" >
		Answer: <input type="text" name="answer" placeholder="Enter the Answer">
		<br>
		<br>
		<input type="submit" value="Submit" name="submit">
	</form>
	<?php 
		// Display the errors
		if($error == -1){
			echo "<p style='color: red'>Enter an answer!</p>";
		}
		elseif($error == 1){
			echo "<p style='color: red'>Wrong answer!</p>";
		}
	?>

</body>

</html>
