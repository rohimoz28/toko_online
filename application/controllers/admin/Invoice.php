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
}
