<link rel="stylesheet" href="foro.css">
<?php
session_start();
	include("conexionBD.php");
	if(isset($_GET["id"]))
	$id = $_GET['id'];
	$query = "SELECT * FROM  foro WHERE id = '$id' ORDER BY fecha DESC";
	$result = $mysqli->query($query);
	while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
		$id = $row['id'];
		$titulo = $row['titulo'];
		$autor = $row['autor'];
		$mensaje = $row['mensaje'];
		$fecha = $row['fecha'];
		$respuestas = $row['respuestas'];
		
		echo "<tr><td>$titulo</tr></td>";
		echo "<table>";
		echo "<tr><td>autor: ".$_SESSION['user']." $autor</td></tr>";
		echo "<tr><td>$mensaje</td></tr>";
		echo "</table>";
		echo "<br /><br /><a href='formulario.php?id&respuestas=$respuestas&identificador=$id'>Responder</a><br />";
	}
	
	$query2 = "SELECT * FROM  foro WHERE identificador = '$id' ORDER BY fecha DESC";
	$result2 = $mysqli->query($query2);
	echo "<br />respuestas:<br /><br />";
	while($row = mysqli_fetch_array($result2, MYSQLI_ASSOC)){
		$id = $row['id'];
		$titulo = $row['titulo'];
		$autor = $row['autor'];
		$mensaje = $row['mensaje'];
		$fecha = $row['fecha'];
		$respuestas = $row['respuestas'];
		
		echo "<tr><td>$titulo</tr></td>";
		echo "<table>";
		echo "<tr><td>autor: ".$_SESSION['user']." $autor</td></tr>";
		echo "<tr><td>$mensaje</td></tr>";
		echo "</table>";
		echo "<br /><br /><a href='formulario.php?id&respuestas=$respuestas&identificador=$id'>Responder</a><br />";
	}
?>