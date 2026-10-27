void main() {
  String teksNilai = '85';
  String teksIpk = '4.00';

  int nilai = int.parse(teksNilai);
  double ipk = double.parse(teksIpk);

  print(nilai + 15);
  print(ipk);
  print(nilai.toString() + ' poin');

  double rataRata = 256 / 3;
  print(rataRata);
  print(rataRata.toStringAsFixed(2));
}