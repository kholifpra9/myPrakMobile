void main(List<String> arguments) {
  //nilai faktor 10,20,30
  int x1, x2, x3;
  x1 = 10;
  x2 = 20;
  x3 = 30;
  print("==============");
  print("no 3 nilai faktorial");
  print("--------------");
  var hasil1 = 1;
  for (int i = 1; i <= x1; i++) {
    hasil1 = hasil1 * i;
  }
  var hasil2 = 1;
  for (int i = 1; i <= x2; i++) {
    hasil2 = hasil2 * i;
  }
  var hasil3 = 1;
  for (int i = 1; i <= x3; i++) {
    hasil3 = hasil3 * i;
  }
  print("faktorial dari $x1! = $hasil1");
  print("faktorial dari $x2! = $hasil2");
  print("faktorial dari $x3! = $hasil3");
}
