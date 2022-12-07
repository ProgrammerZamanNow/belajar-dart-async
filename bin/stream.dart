import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return "$i : Genap";
    } else {
      return "$i : Ganjil";
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event); // tergantikan oleh onDone
  });
  listen.onData((data) {
    print("Stream Subscription : $data");
  });
  listen.onDone(() {
    print("Stream Subscription Done");
  });

  // error, tidak bisa di listen 2x
  // StreamSubscription<String> listen2 = flow.listen((event) {
  //   print(event);
  // });

  print("Done");
}
