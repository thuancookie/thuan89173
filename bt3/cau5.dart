import 'dart:io';
import 'dart:math';

void Pythagorean(int a, int b) {
  print("Canh huyen c la: ${sqrt(a * a + b * b)}");
}

void main(List<String> args) {
  print("Nhap canh a:");
  int? a = int.parse(stdin.readLineSync()!);
  print("Nhap canh b:");
  int? b = int.parse(stdin.readLineSync()!);
  Pythagorean(a, b);
}
