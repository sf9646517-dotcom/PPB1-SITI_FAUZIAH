void produk({
  String nama = "",
  int harga = 0,
}) {
  print("Produk: $nama");
  print("Harga: Rp$harga");
}

void main() {
  produk(harga: 30000000, nama: "iPhone 18 Pro Max");
}