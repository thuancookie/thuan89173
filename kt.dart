import 'dart:core';

class Person {
  final int? id;
  final String? name;
  const Person({this.id, this.name});
  void display() {
    print("ID: ${id}");
    print("Person: ${name}");
  }
}

class Student extends Person {
  @override
  int? _studentId;
  String? className;
  int get id => this._studentId!;
  set id(int id) => this._studentId = id;
  void display() {
    print(id);
    print(className);
  }
}

void main(List<String> args) {
  const Person a = Person(id: 1, name: "thuan");
  a.display();
  const Person b = Person(id: 2, name: "hiep");
  b.display();
  const Person c = Person(id: 3, name: "thang");
  c.display();

  List<Object> ps = [a, b, c];
  for (dynamic e in ps) {
    print("${e.id} ${e.name}");
  }

  Student d = new Student();
  d._studentId = 89173;
  // print(d._studentId);
  d.display();
}
