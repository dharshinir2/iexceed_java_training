import 'dart:convert';
import 'dart:core';

void main() {
  final jsondata = '''
  {
    "name": "booklist",
    "details": [
      {
        "title": "To Kill a Mockingbird",
        "author": "Harper Lee",
        "year": 1960
      },
      {
        "title": "1984",
        "author": "George Orwell",
        "year": 1949
      },
      {
        "title": "Pride and Prejudice",
        "author": "Jane Austen",
        "year": 1813
      }
    ]
  }
  ''';

  print(jsondata.runtimeType);

  final decodeddata = jsonDecode(jsondata);
  print(decodeddata.runtimeType);

  print(decodeddata["name"]);
  print(decodeddata["details"].runtimeType);
}

class Books {
  String? name;
  Books({this.name = name});
  factory Books.fromJson(Map<String, dynamic> data) {
    final name = data["name"];
    return Books(name: name);
  }
}
