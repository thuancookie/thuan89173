import 'dart:io';

void main() {
  File file = File("bt5/hello.txt");
  file.writeAsStringSync(" Hung Hiep Thang", mode: FileMode.append);
  print("Da them ban be");
  String a = file.readAsStringSync();
  print(a);
}
