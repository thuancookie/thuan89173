import 'dart:io';

void inSoChan(int a, int b) {
  if (a < b) {
    if (a % 2 == 0 && a + 2 >= b || a % 2 != 0 && a + 2 > b) {
      print("Khong co so chan nao");
    } else {
      print("Cac so chan trong khoang $a den $b la:");
      for (var i = a; i < b; i++) {
        if (i % 2 == 0) {
          print(i);
        }
      }
    }
  } else if (b < a) {
    if (b % 2 == 0 && b + 2 >= a || b % 2 != 0 && b + 2 > a) {
      print("Khong co so chan nao");
    } else {
      print("Cac so chan trong khoang $a den $b la:");
      for (var i = b; i < a; i++) {
        if (i % 2 == 0) {
          print(i);
        }
      }
    }
  } else {
    print("Khong co so chan nao");
  }
}

void main() {
  print("Nhap a:");
  int? a = int.parse(stdin.readLineSync()!);
  print("Nhap b:");
  int? b = int.parse(stdin.readLineSync()!);
  inSoChan(a, b);
}
