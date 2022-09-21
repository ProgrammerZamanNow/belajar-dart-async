import 'package:test/test.dart';

void main(){

  var data = "Eko";

  setUpAll((){
    print("Start unit test");
  });

  setUp((){
    data = "Eko";
    print(data);
  });

  tearDown((){
    print(data);
  });

  group("Test String", (){

    test("String first", (){
      data = "$data Kurniawan";
      expect(data, equals("Eko Kurniawan"));
    });

    test("String second", (){
      data = "$data Khannedy";
      expect(data, equals("Eko Khannedy"));
    });

  });

}