import 'dart:math';

void main(List<String> args) {
  List<int> randomList = List.generate(6, (_) => Random().nextInt(10));
  print("Mat khau ngau nhien:");
  randomList.forEach((element) {
    print("$element");
  });
}
