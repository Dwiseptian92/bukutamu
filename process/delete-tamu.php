<?php 
	include '../config/koneksi.php';
	
	$id = $_GET['id'];
	$query = mysql_query("DELETE FROM tamu WHERE id='$id'");
 	if($query)
  	{
	  echo"<script>alert('Data Telah Dihapus');
	  window.location='../index.php'</script>";
  	}
  	else
  	{
	  echo"Data Gagal Dihapus";
	  exit;
  	}
 ?>