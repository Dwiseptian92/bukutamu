<?php  
    session_start();
    include "../config/koneksi.php";

    $npp                   = mysql_real_escape_string($_POST['npp']);//untuk menghindari sql injection login
    $password_akses        = mysql_real_escape_string($_POST['password_akses']);

    $query  = mysql_query("SELECT * FROM kolektor WHERE npp='$npp' AND password_akses='$password_akses'");
    $result = mysql_fetch_array($query);
    $hasil  = mysql_num_rows($query);

    if ($result > 0 ) {
        $_SESSION['npp']  = $result['npp'];
        $_SESSION['nama_kolektor']= $result['nama_kolektor'];
        $_SESSION['npw']  = $result['npw'];
        $_SESSION['nama_wadah']  = $result['nama_wadah'];
        echo "<script>alert('Login sukses'); window.location='../kolektor'</script> ";
    } else {
        echo "<script>alert('Login gagal'); window.location='../kolektor'</script> ";
    }
?>