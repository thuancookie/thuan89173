import 'dart:collection';

void main() {
  Map<String, String> infor = {
    'Thuan': '0374',
    'Hung': '0324342',
    'Thang': '0397956',
    'Hiep': '0334'
  };
  infor.removeWhere((key, value) => value.length != 4);
  print(infor);
}
