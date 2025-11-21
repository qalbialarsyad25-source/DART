import 'dart:io';

void main(){
  stdout.write('Masukkan nilai n : ');
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= jumlah; i++){
    String bintang = '';
    for (int j = 1; j <= i; j++){
      bintang += "* ";
    }
    print(bintang);
  }
}