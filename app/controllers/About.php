<?php

class About extends Controller
{
  public function index($nama = 'User', $hobi = 'FapThruInternet', $umur = 32)
  {
    $data['judul'] = 'Aabout';
    $data['nama'] = $nama;
    $data['hobi'] = $hobi;
    $data['umur'] = $umur;
    $this->view('templates/header', $data);
    $this->view('about/index', $data);
    $this->view('templates/footer');
  }

  public function page()
  {
    $data['judul'] = 'PAages';
    $this->view('templates/header', $data);
    $this->view('about/page');
    $this->view('templates/footer');
  }
}
