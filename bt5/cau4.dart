import 'dart:io';

void main() {
  File file = File("bt5/hello.txt");
  file.copySync("bt5/hello_copy.txt");
  print("Da sao chep");
  File fileCopy = File("bt5/hello_copy.txt");
  String a = fileCopy.readAsStringSync();
  print(a);
}
