<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="row mb-5">
        <?php foreach ($barang as $brg) : ?>
            <div class="card text-center mb-3 ml-3" style="width: 14rem;">
                <img src="<?= base_url() . "uploads/" . $brg->gambar; ?>" class="card-img-top img-thumbnail h-50" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?= $brg->nama_brg ?></h5>
                    <!-- <p class="card-text"><?= $brg->keterangan ?></p> -->
                    <span class="badge badge-success mb-3">Rp. <?= $brg->harga ?></span><br>
                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Keranjang</a>
                    <a href="#" class="btn btn-warning btn-sm">Detail</a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>
