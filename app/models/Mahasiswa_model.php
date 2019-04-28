<?php

class Mahasiswa_model
{
  private $table = 'mahasiswa';
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function getAllMahasiswa()
  {
    $this->db->query('SELECT *FROM ' . $this->table);
    return $this->db->resultSet();
  }

  public function getMahasiswaById($id)
  {
    $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id=:id');
    $this->db->binding('id', $id);
    return $this->db->single();
  }

  public function tambahDataMahasiswa($data)
  {
    $query = "INSERT INTO mahasiswa VALUES ('', :nama, :nim, :email, :jurusan)";

    $this->db->query($query);
    $this->db->binding('nama', $data['nama']);
    $this->db->binding('nim', $data['nim']);
    $this->db->binding('email', $data['email']);
    $this->db->binding('jurusan', $data['jurusan']);

    $this->db->execute();

    return $this->db->rowCount();
  }

  public function hapusDataMahasiswa($id)
  {
    $query = "DELETE FROM mahasiswa WHERE id = :id";
    $this->db->query($query);
    $this->db->binding('id', $id);

    $this->db->execute();

    return $this->db->rowCount();
  }

  public function ubahDataMahasiswa($data)
  {
    $query = "UPDATE mahasiswa SET 
                nama = :nama, 
                nim = :nim, 
                email = :email, 
                jurusan = :jurusan 
              WHERE id = :id";

    $this->db->query($query);
    $this->db->binding('nama', $data['nama']);
    $this->db->binding('nim', $data['nim']);
    $this->db->binding('email', $data['email']);
    $this->db->binding('jurusan', $data['jurusan']);
    $this->db->binding('id', $data['id']);

    $this->db->execute();

    return $this->db->rowCount();
  }

  public function cariDataMahasiswa()
  {
    $keyword = $_POST['keyword'];
    $query = "SELECT * FROM mahasiswa WHERE nama LIKE :keyword";
    $this->db->query($query);
    $this->db->binding('keyword', "%$keyword%");
    return $this->db->resultSet();
  }
}
