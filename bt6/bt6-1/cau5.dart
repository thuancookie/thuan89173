import 'dart:math';

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _prize;
  int get id => this._id!;
  String get branding => this._brand! + " " + this._color!;
  double get prize => this._prize!;

  set id(int id) => this._id = id;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set prize(double prize) => this._prize = prize;
  void display() {
    print("Id: $id");
    print("Branding: $branding");
    print("Prize: $prize\n");
  }
}

void main(List<String> args) {
  Camera a = new Camera();
  a.id = 1;
  a.brand = "Canon";
  a.color = "black";
  a.prize = 5000;
  a.display();
  Camera b = new Camera();
  b.id = 2;
  b.brand = "Sony";
  b.color = "blue";
  b.prize = 4000;
  b.display();
  Camera c = new Camera();
  c.id = 3;
  c.brand = "Nikon";
  c.color = "gray";
  c.prize = 3000;
  c.display();
}
