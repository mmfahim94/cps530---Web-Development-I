<?php 
session_start();
if(isset($_SESSION['hits']))
	$_SESSION['hits'] += 1;
else
	$_SESSION['hits'] = 1;

if ($_SESSION['hits'] == 1)
	print "Welcome! This is your first visit";
else
	print "Welcome Back!!! You visited this page ". $_SESSION['hits']." times";

?>

<html>
<head>
	<meta charset="UTF-8">
	<title>PHP Multiplication Table</title>
</head>

<style>
table{	
	margin: 0 auto;
	border-collapse: collapse;
	width: 150px;
	text-align: center
}
table,td,tr{
	border: 3px solid black;
}
td,tr{
	font-size: 20px;
	padding: 0.4em;
}

h2{
	text-align: center;
}
</style>

<body>

<form action="part1.php" method="post">
	<label for="quantity">Enter a number between 3-12</label>
	<input name="size" type="number" min = "3" max = "12">
	<input type="submit" name="submit">
</form>

<h2>The Multiplication Table: </h2>

<?php 
session_start();

$rows = $_POST['size']; 
$cols = $_POST['size'];

if ($rows >= 3 ){
	echo "<table border = '2'>"; 
	for($tr = 0; $tr <= $rows; $tr++){  
		echo "<tr>"; 

		for($td = 0; $td <= $cols; $td++){ 
			if ($tr == 0 and $td == 0)
				echo "<td> * </td>"; 
			else if ($tr == 0 and $td > 0)
				echo "<td>".$td."</td>"; 
			else if ($tr > 0 and $td == 0)
				echo "<td>".$tr."</td>"; 
			else
				echo "<td>".$tr *$td."</td>"; 
		 } 

		echo "</tr>"; 
	} 
}

echo "</table>"; 
 ?>

 
</body>
</html>

