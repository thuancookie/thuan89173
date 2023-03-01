import 'dart:io';

void view(List list) {
  print("---------------------------------");
  for (int i = 0; i < list.length; i++) {
    print("${i + 1} : ${list[i]}");
  }
  print("---------------------------------");
}

void add(List list) {
  print("Nhap task muon them:");
  String task = stdin.readLineSync().toString();
  list.add(task);
  view(list);
}

void remove(List list) {
  print("Nhap vi tri task muon xoa:");

  int? id = int.parse(stdin.readLineSync()!);
  list.removeAt(id - 1);
  view(list);
}

void main() {
  List<String> task = ["wakeup", "eat", "work", "rest", "eat", "sleep"];
  view(task);
  print("Nhap so bat ki de bat dau:");
  int? m = int.parse(stdin.readLineSync()!);
  print("Bat dau!");
  do {
    print("Nhap '1' de them, '2' de xoa task, '0' de ket thuc");
    int? n = int.parse(stdin.readLineSync()!);
    if (n == 1) {
      add(task);
    } else if (n == 2) {
      remove(task);
    } else if (n == 0) {
      m == 0;
      print("Ket thuc!");
      break;
    } else {
      print("Nhap sai!");
    }
  } while (m != 0);
}
