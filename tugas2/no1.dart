class Mobil {
  Mobil(var capacity){
    this.kapasitas = capacity;
  }

  var kapasitas;
  List<int> muatan = [];

  void tambahMuatan(List<int> berat) {
    this.muatan = berat;
  }
  int totalMuatan(){
    int total = 0;
    for (var i = 0; i < muatan.length; i++) {
      total += muatan[i];
    }
    return total;
  }
}

class Hewan {
  Hewan(this.berat){    
  }
  int berat;
}

void main(List<String> args) {
  Mobil m1 = new Mobil(300);
  Hewan h1 = new Hewan(120);
  Hewan h2 = new Hewan(70);
  m1.tambahMuatan([h1.berat, h2.berat]);
  print("kapasitas mobil : "+ m1.kapasitas.toString());
  print("List hewan Diangkut : "+m1.muatan.toString());
  print("Total Muatan : "+m1.totalMuatan().toString());
} 