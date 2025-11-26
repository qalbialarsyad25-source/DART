import 'dart:io';

void main(){
  stdout.write('Masukkan nama anda : ');
  String nama = stdin.readLineSync()!;
  print('Masukkan tanggal,bulan,tahun : ');
  int tanggal = int.parse(stdin.readLineSync()!);
  int bulan = int.parse(stdin.readLineSync()!);
  int tahun = int.parse(stdin.readLineSync()!);
  stdout.write('Apakah anda member : (Member/VIP) ');
  String member = stdin.readLineSync()!.toLowerCase();
  stdout.write('Masukkan harga makanan : ');
  double harga = double.parse(stdin.readLineSync()!);
  double total = 0;

  if(member == 'member'){
    double diskon = (harga - (0.1 * harga));
    total += diskon;
  } else if (member == "vip"){
    double diskon = (harga - (0.2 * harga));
    total += diskon;
  } else {
    total = harga+total;
  }

  print('=== Nota anda ===');
  print('Nama          : $nama');
  print('Tanggal       : $tanggal-$bulan-$tahun');
  print('Member        : $member');
  print('harga awal    : ${harga.toStringAsFixed(2)}');
  print('total         : ${total.toStringAsFixed(2)}');
}