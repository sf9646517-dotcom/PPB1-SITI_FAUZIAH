void main() {
  Set<String> hadir = {'Fau', 'Zia'};

  hadir.add('Jude');
  hadir.add('Fau');
  print(hadir);

  hadir.remove('Zia');
  print(hadir);

  print(hadir.contains('Zia'));
  print(hadir.length);
}