import 'dart:io';
import 'dart:collection';

void main(List<String> args) {
  print("nhap so lương chi phi:");
  int? m = int.parse(stdin.readLineSync()!);
  var dsTien = List<int>.filled(m, 0);
  int tong = 0;
  print("nhap so tien:");
  for (var i = 0; i < m; i++) {
    int? n = int.parse(stdin.readLineSync()!);
    dsTien[i] = n;
    tong += n;
  }

  print("So tien: $dsTien VND");
  print("Tong chi phi: $tong VND");
}
