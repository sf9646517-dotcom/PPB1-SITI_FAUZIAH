void main() {
  String status = "aktif";

  switch (status) {
    case "aktif":
      print("Mahasiswa Aktif");
    case "cuti":
      print("Mahasiswa Cuti");
    case "lulus":
      print("Mahasiswa Sudah Lulus");
    default:
      print("Status tidak diketahui");
  }
}