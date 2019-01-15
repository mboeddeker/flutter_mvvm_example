class Planet {
  String name;
  String climate;
  String terrain;
  String gravity;
  String population;
  int diameter;

  Planet(
      {this.name,
      this.climate,
      this.terrain,
      this.gravity,
      this.population,
      this.diameter});

  Planet.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    climate = map['climate'];
    terrain = map['terrain'];
    diameter = int.parse(map['diameter']);
    gravity = map['gravity'];
    population = map['population'];
  }
}
