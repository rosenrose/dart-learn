import "dart:io";
import "dart:convert";
import "dart:typed_data";

enum Team { red, blue, green, black }

class Player {
  String name;
  num hp;
  Team team;

  Player({
    required this.name,
    required this.hp,
    required this.team,
  });

  Player.createBluePlayer({required String name})
      : this.name = name,
        this.hp = 100,
        this.team = Team.blue;

  void setName(name) {
    this.name = name ?? "";
  }

  String getStatus() => "${[name, hp, team].join(", ")}";
}

void main() {
  var p1 = Player(name: "foo", hp: 200, team: Team.red)
    ..name = "bar"
    ..hp = 999
    ..team = Team.green;
  print(p1.getStatus());

  var p2 = p1
    ..team = Team.black
    ..hp = -1
    ..setName("wow")
    ..getStatus();
  print(p2.getStatus());
}
