enum StatusMahasiswa {hadir, izin, alfa}

void main(){
  var status = StatusMahasiswa.izin;
  
  if(status == StatusMahasiswa.hadir){
    print("Mahasiswa masih aktif kuliah.");
  } else if (status == StatusMahasiswa.alfa){
    print("Mahasiswa lagi alfa");
  } else if(status == StatusMahasiswa.izin){
    print("Mahasiswa akan lulus, sedang proses");
  } else {
    print("Data tidak ditemukan");
  }
}