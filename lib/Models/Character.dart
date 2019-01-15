class Character {
  String name;
  String birthYear;
  String gender;
  String eyeColor;
  int height;

  Character(
      {this.name, this.birthYear, this.gender, this.eyeColor, this.height});

  Character.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    birthYear = map['birth_year'];
    gender = map['gender'];
    eyeColor = map['eye_color'];
    height = int.parse(map['height']);
  }
}
