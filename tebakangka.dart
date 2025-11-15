import 'dart:io';
import 'dart:math';

void main(){
  int counter = 0;

  print('Anda hanya memiliki 3 kesempatan');
  int angkarandom = Random().nextInt(20) + 1;
  while (counter < 3) {
    stdout.write('Tebak angka (1 - 20) : ');
    int angka = int.parse(stdin.readLineSync()!);

    if (angka == angkarandom) {
      print('Selamat anda berhasil');
      break;
    } else if (angka <= angkarandom) {
      print('Angka anda terlalu kecil');
    } else if (angka >= angkarandom) {
      print('Angka anda terlalu besar');
    }
    counter++;

    if (counter == 3){
      print('Anda gagal');
    }
  }
}