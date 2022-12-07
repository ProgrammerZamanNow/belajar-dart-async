Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main(){
  sayHello("World")
      .then((value) => print(value));

  print("Done");
}