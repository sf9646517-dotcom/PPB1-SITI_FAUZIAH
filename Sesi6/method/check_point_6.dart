enum Ukuran { S, M, L, XL, XXL }

void main() {
  print(Ukuran.values);
  print(Ukuran.values.length);
  print(Ukuran.values[2]);
  print(Ukuran.values[2].name);
  
  for (var ukuran in Ukuran.values) {
    print(ukuran.name);
  }
}