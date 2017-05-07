<?php
//error_reporting(0);
include 'config/koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="asset/css/bootstrap.css" rel="stylesheet">
  <!-- Custom CSS -->
  <link href="asset/css/sb-admin-2.css" rel="stylesheet">
  <!-- Custom Fonts -->
  <link href="asset/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="asset/css/style.css"/>
  <link rel="stylesheet" href="css/dataTables.bootstrap.css">    
</head>

<body>
    <div id="wrapper">
      <br>
      <div class="col-md-12">
        <div class="panel panel-success">
          <div class="panel-heading"><h4><i class="fa fa-book"></i>  DAFTAR TAMU</h4></div>
            <div class="panel-body">
              <div class="row">
                <div class="col-sm-12">
                  <nav class="navbar navbar-default">
                    <div class="container-fluid col-sm-8">
                      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <form class="navbar-form navbar-left" role="search">
                          <div class="form-group">
                            <a href="form/input-tamu.php" class="btn btn-success"><i class="fa fa-plus-square"></i> Tambah Data</a>
                          </div>
                        </form> 
                      </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                  </nav>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                    <div class="box-body table-responsive">
                      <table id="example1" class="table table-condensed table-bordered table-hover">
                          <thead>
                              <tr>
                                <th style="width:20px;">No</th>
                                <th style="width:120px;">Status</th>
                                <th style="width:70px;">KTP</th>
                                <th style="width:150px;">Nama</th>
                                <th style="width:200px;">Perusahaan / Divisi</th>
                                <th style="width:150px;">PIC Data Center</th>
                                <th style="width:100px;">No Telp</th>
                                <th style="width:250px;">Keperluan</th>
                                <th style="width:150px;">Actions</th>
                              </tr>
                          </thead>
                          <tbody>
                            <?php 
                              $no=1;
                              $sql = mysql_query("SELECT * FROM tamu ORDER BY id ASC");
                              while ($tampil = mysql_fetch_array($sql)) {
                            ?>
                            <tr>    
                              <td><?php echo $no ?></td>
                              <td>
                                <?php 
                                  $checkout = $tampil['tgl_jam_keluar'];
                                  $record = "0000-00-00 00:00:00";
                                ?>
                                <?php if ($checkout == $record) {?>
                                  <a class="btn btn-success btn-sm" href="process/checkout-tamu.php?id=<?php echo $tampil['id']; ?>"><i class="fa fa-check-circle"></i> Checkout</a>
                                <?php } else {?>
                                  <a class="btn btn-default btn-sm" href="">Sudah Checkout</a>
                                <?php }?>
                              </td>
                              <td><?php echo $tampil['id_ktp'] ?></td>
                              <td><?php echo $tampil['nama'] ?></td>
                              <td><?php echo $tampil['perusahaan'] ?></td>
                              <td><?php echo $tampil['pic'] ?></td>
                              <td><?php echo $tampil['no_telp'] ?></td>
                              <td><?php echo $tampil['keperluan'] ?></td>
                              <td>
                                <div class="btn-group">
                                  <a class="btn btn-success btn-sm" href=""><i class="fa fa-search-plus"></i> Lihat Detail</a>
                                  <a class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
                                  <ul class="dropdown-menu">
                                    <li><a href="form/edit-tamu.php?id=<?php echo $tampil['id']; ?>"><i class="fa fa-edit"></i> Edit</a></li>
                                    <li><a href="process/delete-tamu.php?id=<?php echo $tampil['id']; ?>" onclick="return confirm('Anda ingin hapus data ini?')"><i class="fa fa-trash"></i> Hapus</a></li>
                                  </ul>
                                </div>                      
                              </td>
                            </tr>
                            <?php $no++; } ?>  
                          </tbody>
                      </table>
                    </div>
                </div>
              </div>
            </div>
            <div class="panel-footer">
        
        </div>
          </div>
        
      </div>
    </div>

    <!-- jQuery -->
    <script src="asset/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="asset/js/bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="asset/js/sb-admin-2.js"></script>
    <!-- Datatables -->
    <script src="asset/js/jquery-1.11.1.min.js"></script>
    <script src="asset/js/jquery.dataTables.min.js"></script>
    <script src="asset/js/dataTables.bootstrap.js"></script>  
    <script type="text/javascript">
      $(function () {      
        $('#example1').DataTable();
      });
    </script>







</body>
</html>
