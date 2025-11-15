import 'dart:io';

void main(){
  stdout.write('Masukkan total angka yang akan dimasukkan : ');
  int angka = int.parse(stdin.readLineSync()!);
  List <int> arr = List.filled(angka, 0);

  print('Masukkan angka : ');
  for (int i = 0; i < arr.length; i++){
    arr[i] = int.parse(stdin.readLineSync()!);
  }

  arr.sort();

  for (int a in arr){
    stdout.write('$a ');
  }
}