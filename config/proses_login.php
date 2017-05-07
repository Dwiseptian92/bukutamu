<?php
session_start();
mysql_connect("localhost","root","") or die("Nggak bisa koneksi");
mysql_select_db("db_silhk");


$npk = $_POST['npk'];
$password_akses = $_POST['password_akses'];
$op = $_GET['op'];

if($op=="in"){
    $cek = mysql_query("SELECT * FROM karyawan WHERE npk='$npk' AND password_akses='$password_akses'");
    if(mysql_num_rows($cek)==1){
        $c = mysql_fetch_array($cek);
        $_SESSION['npk'] = $c['npk'];
        $_SESSION['nama_karyawan'] = $c['nama_karyawan'];
        $_SESSION['akses_level'] = $c['akses_level'];
        if($c['akses_level']=="TI"){
            echo "<script>alert('Anda berhasil login'); window.location='../TI'</script>";
        }else if($c['akses_level']=="AOKH"){
           echo "<script>alert('Anda berhasil login'); window.location='../AOKH'</script>";
        }else if($c['akses_level']=="PMK"){
            echo "<script>alert('Anda berhasil login'); window.location='../PMK'</script>";
        }else if($c['akses_level']=="Kolektor"){
            echo "<script>alert('Anda berhasil login'); window.location=''</script>";
        }
    }else{
         die("<script>alert('Login gagal! Kombinasi NPK dan password tidak cocok'); window.location='../login.php'</script>");
    }
}else if($op=="out"){
    unset($_SESSION['npk']);
    unset($_SESSION['akses_level']);
    header("location:../login.php");
}
?>
