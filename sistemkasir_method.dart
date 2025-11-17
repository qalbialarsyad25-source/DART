import 'dart:io';

void main(){
  List<int> listharga = [];

  stdout.write('Masukkan jumlah barang : ');
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++){
    stdout.write('Masukkan harga barang ke-${i+1} : ');
    int harga = int.parse(stdin.readLineSync()!);
    listharga.add(harga);
  }

  int totalakhir = hitungtotal(listharga);
  print('Total belanja adalah : Rp.$totalakhir');
}

int hitungtotal(List<int> hargabarang){
  int total = 0;
  for (var a in hargabarang){
    total += a;
  }
  return total;
}