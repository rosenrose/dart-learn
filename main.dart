import 'dart:io';

void main() {
  dynamic foo = "abc";

  if (foo is String) {
    print(foo);
  }

  foo = 123;
  print(foo);

  String? name = stdin.readLineSync();

  print(name?[name.length - 1]);
}
