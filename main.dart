import "dart:io";
import "dart:convert";
import "dart:typed_data";

int seq = 0;

class Player {
  late final int id;
  String name;
  int hp;

  Player(this.name, this.hp) {
    this.id = seq;
    seq++;
  }

  void setName(name) {
    this.name = name ?? "";
  }

  String getStatus() => "($id) $name: $hp";
}

void main() {
  var p1 = Player("kjw4569", 50);
  print(p1);
  print(p1.name);

  // p1.hp = 417;
  // print(p1.hp);
  p1.setName("foo");
  print(p1.getStatus());

  var p2 = Player("bar", 100);
  print(p2.getStatus());
}
