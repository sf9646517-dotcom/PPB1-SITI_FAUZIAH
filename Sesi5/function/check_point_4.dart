int tambah(int a, int b) {
  return a + b;
}
int kurang(int a, int b) {
  return a - b;
}

int kali(int a, int b) {
  return a * b;
}

void main() {
  int hasil = tambah(10, 7);
  print(hasil);
  
  int hasilKurang = kurang(10, 4);
  print(hasilKurang);

  int hasilKali = kali(2, 8);
  print(hasilKali);
}