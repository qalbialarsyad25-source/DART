import 'dart:io';

void main(){
  bool again = true;

  while(again) {
    stdout.write('Masukkan username : ');
    String nama = stdin.readLineSync()!;
    stdout.write('Masukkan password : ');
    String pass = stdin.readLineSync()!;

    if (nama == 'qalbi' && pass == '1234') {
      for (int i = 0; i <= 100; i++) {
        if (i % 2 != 0) {
          print(i);
        }
      }
      print('Anda berhasil login');
      again = false;
    } else if (nama != 'qalbi' && pass != '1234') {
      for (int i = 0; i + 1 <= 100; i++) {
        if (i % 2 == 0) {
          print(i);
        }
      }
    } else if (nama == 'qalbi' || pass != '1234') {
      print('Password salah');
    } else if (nama != 'qalbi' || pass == '1234') {
      print('Username salah');
    }
  }
}