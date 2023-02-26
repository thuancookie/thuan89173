import 'dart:io';

void ReverseString(String a) {
  var chars = a.split('');
  print("Chuoi dao nguoc la: ${chars.reversed.join()}");
}

void main(List<String> args) {
  print("Nhap mot chuoi:");
  String? a = stdin.readLineSync()!;
  ReverseString(a);
}
