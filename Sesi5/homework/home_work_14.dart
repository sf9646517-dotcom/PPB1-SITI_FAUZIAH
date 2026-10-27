void main(){
  var nilai = [7, 170, 70, 77];

  var lulus = nilai.where((item){
    return item >= 70;
  }).toList();

  print(lulus);
}