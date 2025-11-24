import 'dart:io';

void main(){
  List<String> namabulan = ['Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember'];
  List<int> sebulan = [31,28,31,30,31,30,31,31,30,31,30,31];
  List<String> namahari = ['Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu'];

  stdout.write('Masukkan tahun : ');
  int tahun = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan hari pertama setiap tahun : (0 = Minggu ... 6 = Sabtu) ');
  int hari = int.parse(stdin.readLineSync()!);

  bool leap = (tahun % 4 == 0 && tahun % 100 != 0) || (tahun %400 == 0);

  if (leap){
    sebulan [1] = 29;
  }

  for (int i = 0; i < 12; i++){
    print('${namabulan[i]} 1, $tahun adalah ${namahari[hari]}');

    hari = (hari + sebulan[i]) % 7;
  }
}