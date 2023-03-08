class Chai {
  open() {
    print("Chai đã được mở");
  }
}

class CokeBottle implements Chai {
  @override
  open() {
    print("Chai coca đã được mở");
  }
}
