import 'dart:io';

void main(){
  double hasil = 0;
  bool again = true;

  while(again) {
    print('Masukkan Operasi');
    print('1. Penjumlahan');
    print('2. Pengurangan');c
    print('3. Perkalian');
    print('4. Pembagian');
    print('0. Hasil akhir dan keluar');
    stdout.write('Masukkan pilihan anda : ');
    int menu = int.parse(stdin.readLineSync()!);

    switch (menu) {
      case 1:
        stdout.write('Masukkan bilangan 1 : ');
        double angka1 = double.parse(stdin.readLineSync()!);
        stdout.write('Masukkan bilangan 2 : ');
        double angka2 = double.parse(stdin.readLineSync()!);
        hasil = angka1 + angka2;
        break;
      case 2:
        stdout.write('Masukkan bilangan 1 : ');
        double angka1 = double.parse(stdin.readLineSync()!);
        stdout.write('Masukkan bilangan 2 : ');
        double angka2 = double.parse(stdin.readLineSync()!);
        hasil = angka1 - angka2;
        break;
      case 3:
        stdout.write('Masukkan bilangan 1 : ');
        double angka1 = double.parse(stdin.readLineSync()!);
        stdout.write('Masukkan bilangan 2 : ');
        double angka2 = double.parse(stdin.readLineSync()!);
        hasil = angka1 * angka2;
        break;
      case 4:
        stdout.write('Masukkan bilangan 1 : ');
        double angka1 = double.parse(stdin.readLineSync()!);
        stdout.write('Masukkan bilangan 2 : ');
        double angka2 = double.parse(stdin.readLineSync()!);
        hasil = angka1 / angka2;
        break;
      case 0:
        print('Bilangan akhir adalah ${hasil.toStringAsFixed(2)} ');
        print('Program dimatikan');
        again = false;
        break;
      default:
        print('input tidak valid');
        again = false;
        break;
    }
  }
}