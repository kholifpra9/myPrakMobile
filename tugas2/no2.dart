Future<List<int>> pengalian(List<int> x, int y) async {
  List<int> hasil = [];
  await Future.forEach(x, (int list) async {
    int hasilPerulangan = list * y;
    hasil.add(hasilPerulangan);
  });
  return hasil;
}

void main() async {
  List<int> data = [1, 2, 3];
  int pengali = 2;
  print("List : $data");
  pengalian(data, pengali);
  List<int> hasil = await pengalian(data, pengali);
  print("List baru : $hasil");
}
