import 'dart:io';

void main() {
  for (var i = 1; i <= 100; i++) {
    File file = File("bt5/100file/hello($i).txt");
    file.writeAsStringSync("file($i)", mode: FileMode.append);
    String a = file.readAsStringSync();
    print(a);
    // file.deleteSync();
  }
  print("Da tao 100 file");
}
