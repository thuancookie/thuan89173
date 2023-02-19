import 'dart:io';

void main() {
  print("nhập số thứ nhất:");
  int? a = int.parse(stdin.readLineSync()!);
  print("nhập phép tính:");
  String? o = stdin.readLineSync()!;
  print("nhập số thứ hai:");
  int? b = int.parse(stdin.readLineSync()!);

  switch (o) {
    case "+":
      print("$a + $b = ${a + b}");
      break;
    case "-":
      print("$a - $b = ${a - b}");
      break;
    case "*":
      print("$a * $b = ${a * b}");
      break;
    case "/":
      print("$a / $b = ${a / b}");
      break;
    default:
      print("lỗi phép tính!");
      break;
  }
}
