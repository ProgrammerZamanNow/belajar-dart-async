import 'dart:async';

void main(){
  Timer(Duration(seconds: 2), () {
    print("Hello from Timer");
  });
  print("Done");
}