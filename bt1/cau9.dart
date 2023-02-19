import 'dart:io';

void main() {
  print("nhập 1 câu có dấu cách:");
  String? p = stdin.readLineSync()!;
  print(p.replaceAll(" ", ""));
}
