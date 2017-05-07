<?php
    //error_reporting(0);
    include '../config/koneksi.php';
    $id = $_GET['id'];
    $tampil = mysql_fetch_array(mysql_query("SELECT * FROM tamu WHERE id = '$id'"));
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="../asset/css/bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../asset/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../asset/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="asset/css/style.css"/>
    <link rel="stylesheet" href="../asset/css/bootstrapValidator.css"/>


<script language="javascript">
function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}
</script>
    
</head>
<body>
<div id="wrapper">
    <div class="col-lg-9">
        <form class="form-horizontal" id="formtamu" name="form-tamu" action="../process/edit-tamu.php" method="post">
            <div class="panel panel-success">
                <div class="panel-heading"><h4><i class="fa fa-user"></i>  FORM EDIT TAMU</h4></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-md-2">
                                <input type="hidden" class="form-control" name="id" value="<?php echo $tampil['id']; ?>">
                            </div>
                        </div>
                         <div class="form-group">          
                            <label class="col-md-3 control-label">No KTP</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="id_ktp" placeholder="No KTP" required data-bv-notempty-message="No KTP harus di isi!" value="<?php echo $tampil['id_ktp']; ?>">
                            </div>
                        </div>
                        <div class="form-group">          
                            <label class="col-md-3 control-label">Nama</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="nama" placeholder="Nama lengkap tamu" required data-bv-notempty-message="Nama karyawan harus di isi!" value="<?php echo $tampil['nama']; ?>">
                            </div>
                        </div>
                        <div class="form-group">          
                            <label class="col-md-3 control-label">Perusahaan / Divisi</label>    
                            <div class="col-md-6">  
                                <input type="text" class="form-control" name="perusahaan" placeholder="Perusahaan atau alamat tamu" required data-bv-notempty-message="Perusahaan harus di isi!" value="<?php echo $tampil['perusahaan']; ?>">                           
                            </div>                                
                        </div>
                        <div class="form-group">          
                            <label class="col-md-3 control-label">PIC Data Center</label>    
                            <div class="col-md-6">  
                                <input type="text" class="form-control" name="pic" placeholder="Nama PIC" required data-bv-notempty-message="PIC harus di isi!" value="<?php echo $tampil['pic']; ?>">                           
                            </div>                                
                        </div>

                        <div class="form-group">          
                            <label class="col-md-3 control-label">No Telp</label>
                            <div class="col-md-6">                                 
                                <input type="text" class="form-control" name="no_telp" placeholder="No telephoe yang bisa dihubungi" required data-bv-notempty-message="No telephone harus di isi!" value="<?php echo $tampil['no_telp']; ?>">
                            </div>
                        </div>
                        <div class="form-group">          
                            <label class="col-md-3 control-label">Keperluan</label>    
                            <div class="col-md-6">  
                                <textarea type="text" class="form-control" name="keperluan" required data-bv-notempty-message="Keperluan harus di isi!" placeholder="Keperluan kunjungan"><?php echo $tampil['keperluan']; ?></textarea>                           
                            </div>                                
                        </div>
                    </div>
                    <div class="panel-footer">                            
                        <button type="submit" class="btn btn-success"><i class="fa fa-check-circle"></i>  <strong>Update Data</strong></button>
                         <a class="btn btn-primary" href="../index.php"><strong>Batal</strong></a>
                    </div>
                </div>
    </form>
    </div>    
</div>
</body>
        
        
<!-- jQuery -->
    <script src="../asset/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../asset/js/bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../asset/js/sb-admin-2.js"></script>
    
    <script type="text/javascript" src="../asset/jquery/dist/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../asset/js/bootstrapValidator.js"></script>
    
    

<script type="text/javascript">
    $(document).ready(function() {
        $('#formtamu').bootstrapValidator();
    });
</script>       







</body>
</html>
