import "dart:io";
import "dart:convert";

typedef nums = List<int>;

void main() {
  print(capitalize("hello"));
  print(capitalize(null));

  String? name = stdin.readLineSync();

  if (name?.trim().length == 0) {
    name = null;
  }
  name ??= "default";

  print(name);

  print(getReversed([4, 5, 6]));
}

String capitalize(String? str) => str?.toUpperCase() ?? "NULL";

nums getReversed(nums list) {
  return list.reversed.toList();
}
