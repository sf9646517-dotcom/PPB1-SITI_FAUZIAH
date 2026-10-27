void main(){
  var angka = [7, 17, 70, 77];

  var hasil = angka.map((nilai){
    return nilai *1;
  }).toList();

  print(hasil);
}