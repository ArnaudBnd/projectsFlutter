import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pokemon.dart';
import 'package:http/http.dart' as http;

import '../pokemon_detail_page.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  var url = "https://api.pokemontcg.io/v1/cards";

  PokeHub pokeHub;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poke App"),
        backgroundColor: Colors.cyan,
      ),
      body: pokeHub == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 2,
              children: pokeHub.pokemon
                  .map(
                    (poke) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {
                          _goToPokemonDescription(poke);
                          // Au clique du pokemon
                        },
                        child: Hero(
                          tag: poke.imgUrl,
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(poke.imgUrl))),
                                ),
                                Text(
                                  poke.name,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
      drawer: Drawer(),
    );
  }

  _goToPokemonDescription(pokemon) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PokeDetail(
          pokemon: pokemon,
        ),
      ),
    );
  }
}
