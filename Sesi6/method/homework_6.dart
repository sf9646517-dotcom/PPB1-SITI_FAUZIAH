void main() {
  print(3.compareTo(5));
  print(5.compareTo(3));
  print(5.compareTo(5));
  print('Fau'.compareTo('Zia'));

  List<int> nilai =[78,92,56,88];
  List<int> urut = [...nilai];

  urut.sort((a, b) => a.compareTo(b));
  print(urut);

  urut.sort((a, b) => b.compareTo(a));
  print(urut);

  print(nilai);
}