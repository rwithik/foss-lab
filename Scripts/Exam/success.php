<?php 
	// Check if the session variable is set
	session_start();
	if($_SESSION['success'] == 1){
		$_SESSION['success'] = null;
		echo "Correct answer";
	}
	else{
	header('location: questions.php');
	}
?>
