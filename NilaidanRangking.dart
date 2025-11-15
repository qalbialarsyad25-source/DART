import 'dart:io';

void main(){
  String nama;
  int nilai;
  stdout.write('Masukkan jumlah siswa : ');
  int total = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>?> siswa = List.filled(total, null);
  for(int i = 0; i < total; i++){
    stdout.write('Masukkan nama siswa ke-${i+1} : ');
    String nama = stdin.readLineSync()!;

    stdout.write('Masukkan nilai $nama : ');
    int nilai = int.parse(stdin.readLineSync()!);

    siswa[i] = ({'nama' : nama, 'nilai' : nilai,});
  }

  print('\n=== Data Siswa ===');
  for(var data in siswa){
    print('Nama : ${data!['nama']} - Nilai : ${data['nilai']}');
  }
}
