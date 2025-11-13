import 'dart:io';

void main(){
  double biayamobil = 5000;
  double biayamotor = 5000;
  double motordanmobil = 3000;
  double biayatambahan;
  double biayaakhir;

  stdout.write('masukkan berapa lama anda parkir (dalam menit) : ');
  int menit = int.parse(stdin.readLineSync()!);
  if (menit <= 0){
    print('Input tidak valid');
    return;
  }

  stdout.write('Masukkan kendaraan yang digunakan : ');
  String kendaraan = stdin.readLineSync()!;
  double jam = menit/60;

  if (kendaraan == 'mobil'){
    if (menit <= 5){
      print('Biaya parkir $kendaraan hanya Rp.${motordanmobil.toStringAsFixed(0)},- karena hanya $menit menit');
    } else if (jam <= 2){
      print('Biaya parkir $kendaraan selama ${jam.toStringAsFixed(0)} jam adalah Rp.${biayamobil.toStringAsFixed(0)},-');
    } else if (jam >= 2){
      double lebih = menit - 120;
      double kelipatan = lebih/10;
      biayatambahan = kelipatan*2000;
      biayaakhir = biayatambahan+biayamobil;
      print('Biaya parkir $kendaraan selama ${jam.toStringAsFixed(0)} jam adalah Rp.${biayaakhir.toStringAsFixed(0)},-');
    }
  } else if (kendaraan == 'motor'){
    if (menit <= 5){
      print('Biaya parkir $kendaraan hanya Rp.${motordanmobil.toStringAsFixed(0)},- karena hanya $menit menit');
    } else if (jam <= 2){
      print('Biaya parkir $kendaraan selama ${jam.toStringAsFixed(0)} jam adalah Rp.${biayamotor.toStringAsFixed(0)},-');
    } else if (jam >= 2){
      double lebih = menit - 120;
      double kelipatan = lebih/10;
      biayatambahan = kelipatan*2000;
      biayaakhir = biayatambahan+biayamotor;
      print('Biaya parkir $kendaraan selama ${jam.toStringAsFixed(0)} jam adalah Rp.${biayaakhir.toStringAsFixed(0)},-');
    }
  } else if (kendaraan != 'mobil' || kendaraan != 'motor'){
    print('Pejalan kaki tidak perlu bayar parkir');
  }
}