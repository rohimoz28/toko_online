<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard_admin extends CI_Controller
{
    public function index()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar_admin');
        $this->load->view('Admin/index');
        $this->load->view('templates/footer');
    }
}
