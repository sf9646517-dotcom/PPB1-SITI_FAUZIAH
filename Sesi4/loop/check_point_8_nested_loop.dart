void main() {
  final angkatan = <int, List<String>>{
    2020: ['Fau', 'Jude'],
    2021: ['Bellingham', 'Andi'],
};

outerLoop:
for (final tahun in angkatan.keys) {
  for (final mhs in angkatan[tahun]!) {
   print('Angkatan $tahun - $mhs');

    if (mhs == 'Bellingham') {
      print('Berhenti di Bellingham!');
      break outerLoop; // Hentikan semua loop.
      }
    }
  }
}

// void main() {
//   final mahasiswa = <String, List<int>>{
//     'Andi':[80, 85, 90],
//     'Budi':[75, 70, 80],
//     'Citra':[90, 95, 88],
//   };

//   // list: []
//   // set: {}
//   // map: key:value

//   for (var data in mahasiswa.entries) {
//     print("Mahasiswa: ${data.key}");
//     for (var nilai in data.value) {
//       print("Nilai: $nilai");
//     }
//   }
// }