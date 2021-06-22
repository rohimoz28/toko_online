<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Invoice extends CI_Controller
{
    public function index()
    {
        $data['invoices'] = $this->M_invoice->tampil_data();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('admin/invoice', $data);
        $this->load->view('templates/footer');
    }

    public function detail($id_invoice)
    {
        $data['invoice']    = $this->M_invoice->getIdInvoice($id_invoice);
        $data['pesanan']    = $this->M_invoice->getIdPesanan($id_invoice);

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('admin/detail_invoice', $data);
        $this->load->view('templates/footer');
    }
}
