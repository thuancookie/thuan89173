void main() {
  int i = 1;
  do {
    print(i);
    if (i == 40) {
      i = 42;
    } else {
      i++;
    }
  } while (i <= 100);
}
