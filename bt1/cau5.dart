import 'dart:io';

void main() {
  print("Nhập vào 1 số: ");
  int? n = int.parse(stdin.readLineSync()!);
  print("Bình phương của $n là: ${n * n} \n");
}
