import 'dart:io';

void main() {
  var s = 0;
  print("Nhập n: ");
  int? n = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= n; i++) {
    s += i;
  }
  print("$s");
}
