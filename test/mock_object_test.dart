

import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "mock_object_test.mocks.dart";

void main(){
  group("BookService", (){

    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", (){
      bookService.save("1", "Tutorial Dart", 100000);
    });

  });
}