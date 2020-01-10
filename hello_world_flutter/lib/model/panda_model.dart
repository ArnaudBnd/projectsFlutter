import 'package:flutter/material.dart';

class Panda {
  String name;
  Color color;
  int age;

  Panda(this.name, this.color, this.age);

  @override
  String toString() {
    return 'Panda{name: $name, color: $color, age: $age}';
  }
}
