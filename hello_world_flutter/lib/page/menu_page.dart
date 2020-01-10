import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/exercice_1.dart';
import 'package:hello_world_flutter/page/hero_animation_page.dart';
import 'package:hello_world_flutter/page/login_page.dart';
import 'package:hello_world_flutter/page/long_List_page.dart';
import 'package:hello_world_flutter/page/network_image_page.dart';
import 'package:hello_world_flutter/page/object_list_page.dart';
import 'package:hello_world_flutter/page/pokemon_list_page.dart';
import 'package:hello_world_flutter/page/random_cat_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'calculator/exercice_1b.dart';
import 'image_gallery_page.dart';

class MenuPageWidget extends StatefulWidget {
  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter demo app'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Colors.white,
              onPressed: () async {
                SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                await sharedPreferences.remove('user');

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              })
        ],
      ),
      body: Column(children: <Widget>[
        Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Hero(
                      tag: 'image',
                      child: Image.asset('assets/téléchargement.jpeg',
                          fit: BoxFit.cover),
                    )),
                Spacer(),
              ],
            )),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.playlist_add, color: Colors.white),
                        Container(width: 12.0),
                        Text('Pokemon List Page'),
                      ],
                    ),
                    onPressed: () {
                      _goToPokemonListPage();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add_alarm, color: Colors.white),
                        Container(width: 12.0),
                        Text('Object list'),
                      ],
                    ),
                    onPressed: () {
                      _goToPageObjectList();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.playlist_add, color: Colors.white),
                        Container(width: 12.0),
                        Text('Network Image'),
                      ],
                    ),
                    onPressed: () {
                      _goToNetworkPage();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.playlist_add, color: Colors.white),
                        Container(width: 12.0),
                        Text('Random cat page'),
                      ],
                    ),
                    onPressed: () {
                      _goToRandomCat();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.playlist_add, color: Colors.white),
                        Container(width: 12.0),
                        Text('Hero animation'),
                      ],
                    ),
                    onPressed: () {
                      _goToPageHeroAnimation();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.mobile_screen_share, color: Colors.white),
                        Container(width: 12.0),
                        Text('flutter_exercice_1a'),
                      ],
                    ),
                    onPressed: () {
                      _goToPageExercice1();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_iphone, color: Colors.white),
                        Container(width: 12.0),
                        Text('flutter_exercice_1b'),
                      ],
                    ),
                    onPressed: () {
                      _goToPageExercice1b();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.list, color: Colors.white),
                        Container(width: 12.0),
                        Text('Long List'),
                      ],
                    ),
                    onPressed: () {
                      _goToPageLongList();
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.featured_play_list, color: Colors.white),
                        Container(width: 12.0),
                        Text('Image Gallery'),
                      ],
                    ),
                    onPressed: () {
                      _goToGalleryPage();
                    },
                  ),
                  Container(
                    height: 21.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  _goToPokemonListPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PokemonListPage();
    }));
  }

  _goToRandomCat() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RandomCatPage();
    }));
  }

  _goToPageHeroAnimation() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HeroAnimationPage();
    }));
  }

  _goToPageObjectList() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ObjectListPage();
    }));
  }

  _goToPageLongList() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LongListPage();
    }));
  }

  _goToPageExercice1() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Exercice1();
    }));
  }

  _goToPageExercice1b() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return IosCalculator();
    }));
  }

  _goToNetworkPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NetworkImagePage();
    }));
  }

  _goToGalleryPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageGalleryPage();
    }));
  }
}
