void sapa(String nama, [String pesan = "Selamat datang"]) {
  print("Halo $nama, $pesan!");
}
void main() {
  sapa("Jude");
  sapa("Fauu", "Selamat belajar Dart");
}