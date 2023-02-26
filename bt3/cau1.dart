import 'dart:io';

void myName() {
  print("Nhap ten cua ban:");
  String? a = stdin.readLineSync()!;
  print("Ten cua ban la: $a");
}

void main() {
  myName();
}
