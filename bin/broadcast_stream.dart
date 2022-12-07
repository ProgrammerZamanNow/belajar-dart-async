Stream<int> numbers(){
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

void main(){
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream()
    .take(5);

  broadcastStream.listen((event) {print(event);});
  broadcastStream.listen((event) {print(event);});

  print("Done");
}