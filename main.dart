import "dart:io";
import "dart:convert";
import "dart:typed_data";

enum Team { red, blue, green, black }

abstract class Animal {
  void walk();
}

class Human extends Animal {
  final String name;

  Human({required this.name});

  void walk() {
    print("Human walks");
  }

  void say() {
    print("name is $name.");
  }
}

mixin Power {
  final double power = 150.99;
}

mixin Runner {
  void run() {
    print("Run!");
  }
}

class Player extends Human with Power, Runner {
  num hp;
  Team team;

  Player({
    required String name,
    required this.hp,
    required this.team,
  }) : super(name: name);

  @override
  void say() {
    super.say();
    print("team: $team");
  }

  String getStatus() => "${[name, hp, team].join(", ")}";
}

void main() {
  var p1 = Player(
    name: "foo",
    hp: 200,
    team: Team.red,
  );

  p1.walk();
  p1.say();
  print(p1.power);
  p1.run();
}
