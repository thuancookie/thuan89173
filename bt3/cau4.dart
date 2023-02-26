import 'dart:io';
import 'dart:math';

void dtht(double r) {
  double s = r * r * pi;
  print("Dien tich hinh tron ban kinh $r la: $s");
}

void main(List<String> args) {
  print("Nhap ban kinh:");
  double? r = double.parse(stdin.readLineSync()!);
  dtht(r);
}
