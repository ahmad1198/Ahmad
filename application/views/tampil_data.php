<!doctype html>
<html lang="en">
<head>
	<base href="<?=base_url()?>">
	<meta charset="UTF-8">
	<title>UTS</title>
</head>
<body>
	 <div class="content-wrapper">
    <section class="content-header">
      <h1>
			Data Tables
			<small>advanced tables</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>
	<section class="content">
        <div class="row">
        	<div class="box">
			<div class="box-header">
	<a href="c_crud/tambah" class="btn btn-primary">Add Data</a>
	<!-- <a href="crud/tampil2" class="btn btn-primary">Riwayat Log</a> -->
	<div class="box-body">
	<table id="example1" class="table table-bordered table-striped">
		<thead>
	<tr>
		<th>ID</th>
		<th>Nim</th>
		<th>Nama</th>
		<th>Prodi</th>
		<th>Jenis Kelamin</th>
		<th>Alamat</th>
		<th>Nomer HP</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
	</thead>
		<?php
		foreach ($isi as $k0 => $v0) {
		?>
		<tr>
			<td><?php echo $v0['id'] ?></td>
			<td><?php echo $v0['nim'] ?></td>
			<td><?php echo $v0['nama_mahasiswa'] ?></td>
			<td><?php echo $v0['prodi'] ?></td>
			<td><?php echo $v0['jk'] ?></td>
			<td><?php echo $v0['alamat'] ?></td>
			<td><?php echo $v0['hp'] ?></td>
			<td><a href='<?php echo "c_crud/ubah/".$v0["id"] ?>'>Edit<a/></td>
			<td><a href='<?php echo "c_crud/hapus/".$v0["id"] ?>'>Delete<a/></td>
		</tr>
		<?php } ?>
</table>
    </section>
  </div>
</div>
</div>
</div>


</body>

