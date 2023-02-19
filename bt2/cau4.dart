import 'dart:io';

void main() {
  print("Nhập tên của bạn: ");
  String? n = stdin.readLineSync();
  for (var i = 0; i < 100; i++) {
    print(" ${i + 1} $n");
  }
}
