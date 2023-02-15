import 'dart:io';

void main() {
  print("Nhập họ của bạn: ");
  String? fisrtname = stdin.readLineSync();
  print("Nhập tên của bạn: ");
  String? lastname = stdin.readLineSync();
  print("Tên của bạn là: ${fisrtname} ${lastname} \n");
}
