<?php

include "../config/koneksi.php";//sambung ke mysql

//mengambil data dari form
$id = $_POST['id'];
$id_ktp = $_POST['id_ktp'];
$nama = $_POST['nama'];
$perusahaan = $_POST['perusahaan'];
$pic = $_POST['pic'];
$no_telp = $_POST['no_telp'];
$keperluan = $_POST['keperluan'];
// $tgl_jam_masuk = $_POST['tgl_jam_masuk'];

$query = mysql_query("UPDATE tamu SET id_ktp='$id_ktp', nama='$nama', perusahaan='$perusahaan', pic='$pic', no_telp='$no_telp', keperluan='$keperluan' WHERE id='$id' ");

if ($query) {
		echo "<script>alert('Data berhasil diupdate');
	 	window.location='../index.php'</script>";
	} else {
		echo "<script>alert('Data gagal diupdate'); 
		window.location='../index.php'</script>";
	}
?>
