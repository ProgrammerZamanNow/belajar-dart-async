import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Eko Khannedy");
}

void main(){
  test("Future Matcher", () {
    final name = getName();
    expect(name, completion(equals("Eko Khannedy")));
  });
  test("Future Test", () async {
    final name = await getName();
    expect(name, "Eko Khannedy");
  });
}