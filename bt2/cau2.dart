import 'dart:io';

void main() {
  print("Nhập 1 ký tự");
  String? n = stdin.readLineSync();
  switch (n) {
    case 'o':
    case 'a':
    case 'u':
    case 'i':
    case 'e':
      print("$n là nguyên âm");
      break;
    default:
      print("$n là phụ âm");
  }
}
