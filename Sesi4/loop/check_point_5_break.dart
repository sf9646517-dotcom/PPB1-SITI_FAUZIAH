void main() {
  final produk = ['Beras', 'Gula', 'Kopi', 'Susu'];
  var cari = 'Gula';

for (final item in produk) {
  print('Mencari: $item');

if (item == cari) {
  print('Produk ditemukan!');
  break;
    }
  }
  print("program selesai");
}