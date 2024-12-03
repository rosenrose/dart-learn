import "dart:io";
import "dart:convert";

void main() {
  var isFive = true;
  var nums = [
    1,
    2,
    3,
    4,
    if (isFive) 5,
  ];

  print("nums: $nums");

  var ab = "12";
  var abc = "123";

  print("${ab}c");

  var oldFriends = ["nico", "lynn"];
  var newFriends = [
    "foo",
    "bar",
    for (var of in oldFriends) "❤️ $of",
  ];

  print(newFriends);
}
