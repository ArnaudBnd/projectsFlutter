import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              SizedBox(
                height: 48,
                width: 48,
                child: Hero(
                  tag: 'image',
                  child: Image.asset(
                    'assets/téléchargement.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('Hero Animation'),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
        ));
  }
}
