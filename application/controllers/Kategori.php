<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
{
    public function elektronik()
    {
        $data['elektronik'] = $this->M_kategori->elektronik();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/elektronik', $data);
        $this->load->view('templates/footer');
    }
    public function pakaian_dewasa()
    {
        $data['pakaian_dewasa'] = $this->M_kategori->pakaian_dewasa();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/pakaian_dewasa', $data);
        $this->load->view('templates/footer');
    }
    public function pakaian_anak()
    {
        $data['pakaian_anak'] = $this->M_kategori->pakaian_anak();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/pakaian_anak', $data);
        $this->load->view('templates/footer');
    }
    public function olahraga()
    {
        $data['olahraga'] = $this->M_kategori->olahraga();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/olahraga', $data);
        $this->load->view('templates/footer');
    }
}
