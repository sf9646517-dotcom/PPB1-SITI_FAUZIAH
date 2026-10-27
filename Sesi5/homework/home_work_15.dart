void main() {
 
  var angka =[1, 2, 3];
  var hasil = angka.map((item) {
    return item * 2;
  }).toList();
  print(hasil);

  
  var angka2 =[1, 2, 3];
  var hasil2 = angka2.map((item) => item * 2).toList();
  print(hasil2);
}