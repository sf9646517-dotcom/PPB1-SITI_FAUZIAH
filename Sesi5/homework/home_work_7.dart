void mahasiswa({
  String nama = "Tanpa Nama",
  String status = "Izin",
}) {
  print("Nama: $nama");
  print("Status: $status");
}

void main() {
  mahasiswa(nama: "Fauu");
  mahasiswa(nama: "Ziaa", status: "Cuti");
}