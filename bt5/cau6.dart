import 'dart:io';

void main() {
  File fileCopy = File("bt5/hello_copy.txt");
  if (fileCopy.existsSync()) {
    fileCopy.deleteSync();
    print("Da xoa file");
  } else {
    print("File khong ton tai");
  }
}
