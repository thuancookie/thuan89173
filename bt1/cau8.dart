void swap(var a, var b) {
  var temp = a;
  a = b;
  b = temp;
  print("Hai số sau khi đổi chỗ là: $a $b \n");
}

void main() {
  var a = 3;
  var b = 5;
  print("Hai số ban đầu là: $a $b");
  swap(a, b);
}
