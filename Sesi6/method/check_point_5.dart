void main() {
  Map<String, int> stok = {'Pulpen': 50, 'Pengaris': 30, 'Buku': 25};

  print(stok.keys);
  print(stok.values);
  print(stok.containsKey('Pulpen'));

  stok.remove('Pulpen');
  print(stok);

  int total = 0;
  for (var jumlah in stok.values) {
    total += jumlah;
  }
  print('Total stok: $total');
}