<?php

class M_kategori extends CI_Model
{
    public function elektronik()
    {
        return $this->db->get_where('tb_barang', ['kategori' => 'Elektronik'])->result();
    }
    public function pakaian_dewasa()
    {
        return $this->db->get_where('tb_barang', ['kategori' => 'Pakaian Dewasa'])->result();
    }
    public function pakaian_anak()
    {
        return $this->db->get_where('tb_barang', ['kategori' => 'Pakaian Anak'])->result();
    }
    public function olahraga()
    {
        return $this->db->get_where('tb_barang', ['kategori' => 'Olahraga'])->result();
    }
}
