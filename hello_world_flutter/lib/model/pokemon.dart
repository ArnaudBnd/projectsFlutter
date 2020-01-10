class PokeHub {
  List<Pokemon> pokemon;
  PokeHub({this.pokemon});

  PokeHub.fromJson(Map<String, dynamic> json) {
    if (json['cards'] != null) {
      pokemon = new List<Pokemon>();
      json['cards'].forEach((v) {
        pokemon.add(new Pokemon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['cards'] = this.pokemon.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pokemon {
  String id;
  String name;
  String imgUrl;
  String series;
  String set;
  List<dynamic> type;
  List<dynamic> weaknesses;
  List<dynamic> resistances;
  List<dynamic> attacks;

  Pokemon({
    this.id,
    this.name,
    this.type,
    this.imgUrl,
    this.series,
    this.set,
    this.weaknesses,
    this.resistances,
    this.attacks,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imgUrl = json['imageUrl'];
    type = json['types'];
    series = json['series'];
    set = json['set'];
    weaknesses = json['weaknesses'];
    resistances = json['resistances'];
    attacks = json['attacks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imageUrl'] = this.imgUrl;
    data['type'] = this.type;
    data['series'] = this.series;
    data['set'] = this.set;
    data['weaknesses'] = this.weaknesses;
    data['resistances'] = this.resistances;
    data['attacks'] = this.attacks;
    return data;
  }
}
