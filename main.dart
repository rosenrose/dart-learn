import "dart:io";
import "dart:convert";

void main() {
  var score = "zz";
  var superpower = 123;
  var player = {
    "name": "nico",
    score.toUpperCase(): 19.99,
    superpower + 3: false,
    "": 1,
    null: 2,
    "name": "lynn"
  };

  print(player);

  var nums = {
    3,
    3,
    3,
    1,
    2,
    2,
    [1, 2],
    [1, 2],
    null,
    null,
    "abc",
    "abc",
    true,
    true
  };

  print(nums);
}
