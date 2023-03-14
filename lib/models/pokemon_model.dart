import 'dart:math';

class PokemonModel {
  String name;
  String img;
  List<String> type;
  String numPokemon;
  String height;
  String weight;
  String candy;
  String eggs;
  List<String> weaknesses;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.numPokemon,
    required this.height,
    required this.weight,
    required this.candy,
    required this.eggs,
    required this.weaknesses,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e)=>e)),
        numPokemon: json["num"],
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        eggs: json["egg"],
        weaknesses: List<String>.from(json["weaknesses"].map((e)=>e)),
      );
}
