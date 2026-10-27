void main() {
  List<String> nama = ['Fau', 'Zia', 'Jude', 'Olle'];

  nama.add('Bellingham');
  nama.remove('Olle');
  nama.sort((a, b) => a.compareTo(b));

  print(nama);
  print('Jumlah: ${nama.length}');
}