<?php

include "../config/koneksi.php";//sambung ke mysql

//mengambil data dari form
$id = $_POST['id'];
$nama = $_POST['nama'];
$perusahaan = $_POST['perusahaan'];
$pic = $_POST['pic'];
$no_telp = $_POST['no_telp'];
$keperluan = $_POST['keperluan'];
$tgl_jam_masuk = $_POST['tgl_jam_masuk'];


$query = mysql_query("INSERT INTO tamu VALUES('', '$nama', '$perusahaan', '$pic', '$no_telp', '$keperluan', '$tgl_jam_masuk', '')");

if ($query) {
		echo "<script>alert('Data berhasil disimpan');
	 	window.location='../index.php'</script>";
	} else {
		echo "<script>alert('Data gagal disimpan'); 
		window.location='../index.php'</script>";
	}
?>
