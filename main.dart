import "dart:io";
import "dart:convert";
import "dart:typed_data";

int seq = 0;

class Player {
  late final int id;
  String name;
  num hp;
  String team;
  int age;

  Player({
    required this.name,
    required this.hp,
    required this.team,
    required this.age,
  }) {
    this.id = seq;
    seq++;
  }

  Player.createBluePlayer({required String name, required int age})
      : this.id = seq++,
        this.name = name,
        this.age = age,
        this.hp = 100,
        this.team = "blue";

  Player.fromJson(Map<String, dynamic> json)
      : this.id = seq++,
        this.name = json["name"],
        this.team = json["team"],
        this.hp = json["hp"],
        this.age = 0;

  void setName(name) {
    this.name = name ?? "";
  }

  String getStatus() => "($id) ${[name, hp, team, age].join(", ")}";
}

void main() {
  var b1 = Player.createBluePlayer(name: "nico", age: -1);
  print(b1.getStatus());

  var b2 = Player.createBluePlayer(name: "foo", age: 234);
  print(b2.getStatus());
  print("");

  var apiData = [
    {
      "name": "franch122",
      "team": "red",
      "hp": 0,
    },
    {
      "name": "lynn",
      "team": "blue",
      "hp": 10,
    },
    {
      "name": "bar",
      "team": "red",
      "hp": 474,
    },
  ];

  for (final json in apiData) {
    print(Player.fromJson(json).getStatus());
  }

  apiData.forEach((json) {
    print(Player.fromJson(json).getStatus());
  });
}
