import 'dart:io';

void main(){
  List<double> datalist = [];
  print('1. Input data');
  print('2. Lihat data');
  print('3. Rata Rata');
  print('4. Sum');
  print('5. Bilangan Max');
  print('6. Bilangan Min');
  print('7. Keluar');

  bool again = true;
  while(again){
    stdout.write('Masukkan nilai : ');
    int nilai = int.parse(stdin.readLineSync()!);
    switch(nilai){
      case 1:
        stdout.write('Masukkan data : ');
        double angka = double.parse(stdin.readLineSync()!);
        datalist.add(angka);
        break;
      case 2:
        print('Data Anda : $datalist');
        break;
      case 3:
        double total = 0;
        for (double rata in datalist){
          total += rata;
        }
        double r = total/datalist.length;
        print('Rata Rata anda : ${r.toStringAsFixed(2)}');
        break;
      case 4:
        double sum = 0;
        for (double totalsum in datalist){
          sum += totalsum;
        }
        print('Sum anda : ${sum.toStringAsFixed(2)}');
        break;
      case 5:
        double max = datalist[0];
        for(int i = 1; i < datalist.length; i++){
          if(datalist[i] > max){
            max = datalist[i];
          }
        }
        print('Max anda : ${max.toStringAsFixed(2)}');
        break;
      case 6:
        double min = datalist[0];
        for(int i = 1; i < datalist.length; i++){
          if(datalist[i] < min){
            min = datalist[i];
          }
        }
        print('Min anda : ${min.toStringAsFixed(2)}');
        break;
      case 7:
        print('Anda keluar dari program');
        again = false;
        break;
      default:
        print('Input anda tidak valid!');
        break;
    }
  }
}