import 'dart:collection';

void main(List<String> args) {
  List<String> friends = [];
  friends.addAll(["Hiep", "An", "Thang", "Vu", "Nguyen", "Hung", "Quan"]);
  print(friends);
  List<String> friendsA =
      friends.where((element) => element.startsWith("A")).toList();
  print("Ten bat dau bang A:");
  for (String e in friendsA) {
    print(e);
  }
}
