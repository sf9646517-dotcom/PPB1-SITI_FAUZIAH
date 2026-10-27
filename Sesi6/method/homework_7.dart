void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Fau', 'nilai': 100},
    {'nama': 'Zia', 'nilai': 95},
    {'nama': 'Jude', 'nilai': 70},
  ];

  mahasiswa.sort((a, b) => (b['nilai'] as int).compareTo(a['nilai'] as int));

  for (var mhs in mahasiswa) {
    print('${mhs['nama']}: ${mhs['nilai']}');
  }
}