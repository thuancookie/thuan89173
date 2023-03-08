class House {
  final int? id;
  final String? name;
  final double? prize;
  const House({this.id, this.name, this.prize});
  void display() {
    print("Stt: ${id}");
    print("Tên House: ${name}");
    print("Prize: ${prize} \n");
  }
}

void main(List<String> args) {
  const House a = House(id: 1, name: "thuan", prize: 30000);
  a.display();
  const House b = House(id: 2, name: "hiep", prize: 50000);
  b.display();
  const House c = House(id: 3, name: "thang", prize: 60000);
  c.display();
}
