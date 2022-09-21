

import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "mock_object_test.mocks.dart";

void main(){
  group("BookService", (){

    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", (){
      bookService.save("1", "Tutorial Dart", 100000);
      verify(bookRepository.save(Book("1", "Tutorial Dart", 100000))).called(1);
    });

    test("Find book by id not found", (){
      expect((){
        bookService.find("1");
      }, throwsException);

      verify(bookRepository.findById("1")).called(1);
    });

    test("Find book by id success", (){
      when(bookRepository.findById("1"))
          .thenReturn(Book("1", "Tutorial Dart", 100000));

      var book = bookService.find("1");
      expect(book, equals(Book("1", "Tutorial Dart", 100000)));

      verify(bookRepository.findById("1")).called(1);

    });

  });
}