import 'package:flutter/material.dart';

class RandomCatPage extends StatefulWidget {
  @override
  _RandomCatPageState createState() => _RandomCatPageState();
}

class _RandomCatPageState extends State<RandomCatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random cat page'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: _refreshPressed)
          ],
        ),
        body: Column(
          children: <Widget>[
            Spacer(),
            Row(
              children: <Widget>[],
            )
          ],
        ));
  }

  _refreshPressed() async {
    print('clicked');
  }
}
