import 'dart:io';

void main(){
  List<double> waktulari = [];
  List<double> jaraklari = [];

  stdout.write('Masukkan waktu dalam (detik) : ');
  double waktu = double.parse(stdin.readLineSync()!);
  waktulari.add(waktu);

  stdout.write('Masukkan jarak dalam (meter) : ');
  double jarak = double.parse(stdin.readLineSync()!);
  jaraklari.add(jarak);

  if (jarak <= 0 || waktu <= 0){
    print('input tidak valid');
    return;
  }

  double hasil = kecepatantotal(waktulari, jaraklari);
  if (hasil >= 8 ){
    print('Kecepatan ${hasil.toStringAsFixed(1)} (m/s) Kategori atlet cepat');
  } else {
    print("Kecepatan ${hasil.toStringAsFixed(1)} (m/s) Kategori atlet pemula");
  }
}

double kecepatantotal (List<double> lariwaktu, List<double> larijarak){
  double kecepatan = larijarak[0]/lariwaktu[0];
  return kecepatan;
}
