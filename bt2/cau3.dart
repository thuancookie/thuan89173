import 'dart:io';

void main() {
  print("Nhập 1 số: ");
  int? n = int.parse(stdin.readLineSync()!);
  if (n == 0) {
    print("$n bằng 0");
  } else if (n < 0) {
    print("$n là số âm");
  } else {
    print("$n là số dương");
  }
}
