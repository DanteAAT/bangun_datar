import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int sisi1 = 0;
  int sisi2 = 0;
  int sisi3 = 0;

  final hasil = "".obs;
  final angka = "".obs;


  void hitungLuas(){
    var hitung = 0.5 * sisi1 * sisi2;
    hasil.value = "Hasil Perhitungan luas dari 1/2 * $sisi1 x $sisi2 adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungKeliling(){
    int hitung = sisi1 + sisi2 + sisi3;
    hasil.value = "Hasil Perhitungan keliling dari  $sisi1 +  $sisi2 + $sisi3 adalah $hitung";
    angka.value = "$hitung";
  }
}