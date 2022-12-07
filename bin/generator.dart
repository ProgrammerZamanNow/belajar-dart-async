Iterable<int> syncNumber() sync* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  syncNumber().forEach((element) {
    print(element);
  });

}
