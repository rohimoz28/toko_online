<div class="container-fluid">

    <h3>Detail Keranjang Belanja</h3>

    <table class="table table-striped table-hover table-bordered">
        <tr>
            <td>No</td>
            <td>Nama Produk</td>
            <td>Jumlah</td>
            <td>Harga</td>
            <td>Subtotal</td>
        </tr>
        <?php $no = 1; ?>
        <?php foreach ($this->cart->contents() as $items) : ?>
            <tr>
                <td> <?= $no++; ?> </td>
                <td><?= $items['name']; ?></td>
                <td><?= $items['qty']; ?></td>
                <td>Rp <?= number_format($items['price'], 0, ',', '.'); ?></td>
                <td>Rp <?= number_format($items['subtotal'], 0, ',', '.'); ?></td>
            </tr>
        <?php endforeach; ?>
        <tr>
            <td colspan="4" class="text-center">Total yang harus di bayar </td>
            <td>Rp <?= number_format($this->cart->total(), 0, ',', '.'); ?></td>
        </tr>
    </table>

</div>
