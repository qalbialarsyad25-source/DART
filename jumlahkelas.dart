import 'dart:io';

void main(){
  stdout.write('Masukkan jumlah kelas : ');
  int kelas = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan jumlah siswa : ');
  int siswa = int.parse(stdin.readLineSync()!);

  print('Daftar nama siswa : ');

  for (int i = 1; i <= kelas; i++){
    print('Kelas $i');
    for (int j = 1; j <= siswa; j++){
      stdout.write('Masukkan nilai siswa ke $j : ');
      String nilai = stdin.readLineSync()!;

      print('Nilai siswa ke-$j adalah $nilai');
    }
  }

}