import 'dart:io';

// cau 1
void myName() {
  var name = "Thuận";
  print("Tên của tôi là $name \n");
}

// cau 2
void otherName() {
  var name = "John Doe";
  print("Hello I am $name");
  print("Hello I'am $name \n");
}

// cau 4
void formula() {
  var p = 100;
  var t = 2;
  var r = 3;
  var formula = (p * t * r) / 100;
  print("($p * $t * $r) / 100 = $formula \n");
}

// cau 5
void bp() {
  print("Nhập vào 1 số: ");
  int? n = int.parse(stdin.readLineSync()!);
  print("Bình phương của $n là: ${n * n} \n");
}

// cau 6
void yourName() {
  print("Nhập họ của bạn: ");
  String? fisrtname = stdin.readLineSync();
  print("Nhập tên của bạn: ");
  String? lastname = stdin.readLineSync();
  print("Tên của bạn là: ${fisrtname} ${lastname} \n");
}

// cau 7
void thuongDu() {
  var a = 5;
  var b = 3;
  var thuong = a ~/ b;
  var du = a % b;
  print("Thương của $a và $b là: $thuong ");
  print("Số dư của $a và $b là: $du \n");
}
// cau 8
// void doicho(){
//   var a = 3;
//   var b = 5;

// }

// cau 11
void chiaTien() {
  print("Nhập tổng số tiền: ");
  int? tongtien = int.parse(stdin.readLineSync()!);
  print("Nhập tổng số người: ");
  int? tongnguoi = int.parse(stdin.readLineSync()!);
  var formula = tongtien ~/ tongnguoi;
  print("Số tiền mỗi người là: $formula");
}

void main() {
  myName();
  otherName();
  formula();
  bp();
  yourName();
  thuongDu();
  chiaTien();
}
