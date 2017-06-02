<?php 
	include '../config/koneksi.php';
	
	$id = $_GET['id'];
	$tgl_jam_keluar = date('Y-m-d H:i:s');

  	$query = mysql_query("UPDATE tamu SET tgl_jam_keluar='$tgl_jam_keluar', status_check='0' WHERE id='$id' ");

	if ($query) {
			echo "<script>alert('Data berhasil diupdate');
		 	window.location='../index.php'</script>";
		} else {
			echo "<script>alert('Data gagal diupdate'); 
			window.location='../index.php'</script>";
		}
 ?>