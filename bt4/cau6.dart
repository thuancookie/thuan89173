import 'dart:collection';

void main() {
  Map<String, String> infor = {
    'Ten': 'Thuan',
    'Dia chi': 'Hai Phong',
    'Tuoi': '21',
    'Quoc gia': 'Viet Nam'
  };
  infor['Quoc gia'] = 'Han Quoc';
  print(infor);
}
