import 'dart:io';

void main(){
  stdout.write('Masukkan jumlah siswa : ');
  int total = int.parse(stdin.readLineSync()!);

  if (total <= 0){
    print('input tidak valid');
    return;
  }

  stdout.write('Masukkan berapa total nilai yang ingin dimasukkan : ');
  int jumlahnilai = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>?> siswa = List.filled(total, null);
  for(int i = 0; i < total; i++){
    stdout.write('Masukkan nama siswa ke-${i+1} : ');
    String nama = stdin.readLineSync()!;

    int totalnilai = 0;

    for (int j = 0; j < jumlahnilai; j++){
      stdout.write('Masukkan nilai ke-${j+1} $nama : ');
      int nilai = int.parse(stdin.readLineSync()!);
      totalnilai += nilai;
    }

    double rata = totalnilai/jumlahnilai;

    siswa[i] = ({'nama' : nama, 'rata' : rata,});
  }

  siswa.sort((a, b) => b!['rata'].compareTo(a!['rata']));

  print('\n===== Data Siswa =====');
  for (int i = 0; i < siswa.length; i++) {
    var data = siswa[i];
    print('${i + 1}.${data!['nama'].padRight(20)} - Rata Rata : ${data['rata'].toStringAsFixed(2)}');
  }
}
