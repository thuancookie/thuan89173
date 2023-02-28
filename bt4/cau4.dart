import 'dart:collection';

void main(List<String> args) {
  List<String> days = [];
  days.addAll([
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ]);
  print("7 ngay trong tuan:");
  for (String e in days) {
    print(e);
  }
}
