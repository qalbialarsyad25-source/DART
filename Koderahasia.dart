import 'dart:io';

void main(){
  List<int> invalid = [];
  int id = int.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  List <int> arr = [];
  List<String> pesan = [];

  int mulai = id;
  int akhir = id+25;
  int spasi = id+26;

  for (int i = 0; i < n; i++){
    int nilai = int.parse(stdin.readLineSync()!);
    arr.add(nilai);
  }

  for (int a in arr){
    if (a >= mulai && a <= akhir){
      int kode = a - mulai;
      int base = 'A'.codeUnitAt(0);
      String huruf = String.fromCharCode(base + kode);
      pesan.add(huruf);
    } else if (a == spasi){
      pesan.add(' ');
    } else {
      invalid.add(a);
    }
  }

  print('Output pesan : $pesan');
  if (invalid.isEmpty){
    print ('Elemen tidak ditemukan : []');
  } else {
    print('Elemen tidak ditemukan: $invalid');
  }

}