import 'dart:io';

void main() {
  File file = File("bt5/hello.txt");
  file.writeAsStringSync("Thuan");
  print("Da them ten");
  String a = file.readAsStringSync();
  print(a);
}
