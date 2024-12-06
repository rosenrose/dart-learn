import "dart:io";
import "dart:convert";

void main() {
  sayHello("foo");
  print(getHello("bar"));
  print(add(3, 4));
  print("");

  sayNamedParam(name: "nico", country: "Columbia", age: 30);
  sayNamedParam(name: "admin");
  //sayNamedParam(country: "Korea");
  //sayNamedParam();
  print("");

  sayOptionalPositionalParam("kjw4569", 100);
}

void sayHello(String name) {
  print("Hello $name!");
}

String getHello(String name) {
  return "Hi $name";
}

num add(num a, num b) => a + b;

void sayNamedParam(
    {required String name, int age = -1, String country = "default"}) {
  print("$name(age: $age) from $country");
}

void sayOptionalPositionalParam(String name, int age,
    [String? country = "country"]) {
  print("$name(age: $age) from $country");
}
