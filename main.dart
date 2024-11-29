import "dart:io";
import "dart:convert";

void main() {
  dynamic foo = "abc";

  if (foo is String) {
    print(foo);
  }

  foo = 123;
  print(foo);

  String? name = stdin.readLineSync(encoding: utf8);

  print("entered: $name, length: ${name?.length}");
  print(name?[0]);
  print(name?[name.length - 1]);
}
