Stream<int> numbers() {
  return Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main(){
  Future<int> total = numbers()
    .fold(0, (previous, element) => previous + element);

  // 0, 1 => 1
  // 1, 2 => 3
  // 3, 3 => 6
  // 6, 4 => 10
  // 10, 5 => 15
  // 15, 6 => 21
  // 21, 7 => 28
  // 28, 8 => 36
  // 36, 9 => 45
  // 45, 10 => 55

  total.then((value) => print("Total is $value"));

  print("Done");
}
