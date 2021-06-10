        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="row d-flex flex-row mb-5">
                        <?php foreach ($barang as $brg) : ?>
                            <div class="card text-center ml-3" style="width: 16rem;">
                                <img src="<?= base_url() . "uploads/" . $brg->gambar; ?>" class="card-img-top img-thumbnail h-50" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><?= $brg->nama_brg ?></h5>
                                    <p class="card-text"><?= $brg->keterangan ?></p>
                                    <span class="badge badge-success mb-3">Rp. <?= $brg->harga ?></span><br>
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Keranjang</a>
                                    <a href="#" class="btn btn-warning btn-sm">Detail</a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>