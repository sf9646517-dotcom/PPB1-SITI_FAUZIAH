void main() {
  List<String> daftarNama = ['Jagung', 'Rebung', 'Buncis', 'Kubis' ];
  String kataKunci = 'UNG';

  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      print(nama);
    }
  }
}