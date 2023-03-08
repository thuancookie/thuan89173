class Animal {
  int? id;
  String? name;
  String? color;
  void display() {
    print("Id: $id");
    print("Name: $name");
    print("Color: $color");
  }
}

class Cat extends Animal {
  String? sound;
  void displayCat() {
    print("Sound: $sound");
  }
}

void main(List<String> args) {
  Cat a = new Cat();
  a.id = 1;
  a.name = "Cat";
  a.color = "Yellow";
  a.sound = "Meo";
  a.display();
  a.displayCat();
}
