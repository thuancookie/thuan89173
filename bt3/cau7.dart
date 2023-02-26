import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Nhap mot so:");
  int? n = int.parse(stdin.readLineSync()!);
  print("Nhap so mu");
  int? m = int.parse(stdin.readLineSync()!);
  print("$n mu $m la: ${pow(n, m)}");
}
