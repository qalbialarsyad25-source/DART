import 'dart:io';

void main(){
  List<double> tinggiorang = [];
  List<double> beratorang = [];

  stdout.write('Masukkan tinggi (m) : ');
  double tinggi = double.parse(stdin.readLineSync()!);
  tinggiorang.add(tinggi);

  stdout.write('Masukkan berat (kg) : ');
  double berat = double.parse(stdin.readLineSync()!);
  beratorang.add(berat);

  if (tinggi <= 0 || berat <= 0){
    print('Input tidak valid!');
    return;
  }

  double hasil = analisisBMI(tinggiorang, beratorang);

  print('\n===== HASIL ANALISIS =====');
  if (hasil < 18.5){
    print('BMI    : ${hasil.toStringAsFixed(2)}\nStatus : Kurus\nSaran  : Tambah nutrisi dan kalori, konsultasi gizi ');
  } else if (hasil <= 24.9 ){
    print('BMI    : ${hasil.toStringAsFixed(2)}\nStatus : Normal\nSaran  : Pertahankan pola makan dan olahraga');
  } else if (hasil <= 29.9){
    print('BMI    : ${hasil.toStringAsFixed(2)}\nStatus : Gemuk\nSaran  : Kurangi kalori, mulai olahraga rutin');
  } else if (hasil >= 30){
    print('BMI    : ${hasil.toStringAsFixed(2)}\nStatus : Obesitas\nSaran  : Konsultasi dokter dan program diet serius');
  }
}

double analisisBMI(List<double> orangtinggi, List<double> orangberat){
  double BMI = orangberat[0] / (orangtinggi[0]*orangtinggi[0]);
  return BMI;
}