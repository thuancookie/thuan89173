import 'dart:io';

void main() {
  File file = File("bt5/students.csv");

  file.writeAsStringSync('Ten,Tuoi,Dia chi\n');

  for (int i = 0; i < 2; i++) {
    stdout.write("Nhap ten sinh vien ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Nhap tuoi sinh vien $name: ");
    String? age = stdin.readLineSync();
    stdout.write("Nhap dia chi sinh vien $name: ");
    String? address = stdin.readLineSync();
    file.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  }
  print("Da tao file csv");
}
