class Laptop {
  int? id;
  String? name;
  int? ram;
  void display() {
    print("Stt: $id");
    print("Tên laptop: $name");
    print("Ram: $ram Gb\n");
  }
}

void main(List<String> args) {
  Laptop a = Laptop();
  a.id = 1;
  a.name = "Lenovo";
  a.ram = 8;
  a.display();
  Laptop b = Laptop();
  b.id = 2;
  b.name = "Dell";
  b.ram = 4;
  b.display();
  Laptop c = Laptop();
  c.id = 3;
  c.name = "Asus";
  c.ram = 16;
  c.display();
}
