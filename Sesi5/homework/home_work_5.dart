Map<String, dynamic> getMahasiswa() {
  return {
    "nama": "Fauu",
    "umur": 19,
    "aktif": true,
  };
}

void main() {
  Map<String, dynamic> mahasiswa = getMahasiswa();

  print(mahasiswa);
}