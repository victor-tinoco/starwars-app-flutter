class Warrior {
  String name;
  String code;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String faction;
  String homeworld;
  List<String> films = [];
  List<String> species = [];
  List<String> vehicles = [];
  List<String> starships = [];
  String created;
  String edited;
  String url;

  Warrior(
      {this.name,
      this.code,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.faction,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});
}
