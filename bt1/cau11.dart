import 'dart:io';

void main() {
  print("Nhập tổng số tiền: ");
  int? tongtien = int.parse(stdin.readLineSync()!);
  print("Nhập tổng số người: ");
  int? tongnguoi = int.parse(stdin.readLineSync()!);
  var formula = tongtien / tongnguoi;
  print("Số tiền mỗi người là: $formula \n");
}
