import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/panda_model.dart';

class ObjectListPage extends StatefulWidget {
  @override
  _ObjectListPageState createState() => _ObjectListPageState();
}

class _ObjectListPageState extends State<ObjectListPage> {
  final listAnimatedKey = GlobalKey<AnimatedListState>();

  List<Panda> pandas = [];

  @override
  void initState() {
    super.initState();

    pandas.add(Panda('Bob', Colors.black, 150));
    pandas.add(Panda('Arnaud', Colors.brown, 1500));
    pandas.add(Panda('Job', Colors.green, 15));
    pandas.add(Panda('Thibaut', Colors.yellow, 100));

    print(pandas.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Panda List'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                pandas.insert(0, Panda('Default poney', Colors.brown, 10));

                listAnimatedKey.currentState.insertItem(0);
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: AnimatedList(
        key: listAnimatedKey,
        initialItemCount: pandas.length,
        itemBuilder: (context, index, animation) {
          Panda p = pandas[index];
          return SlideTransition(
              position: animation.drive(
                  Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero)
                      .chain(CurveTween(curve: Curves.easeInOutCirc))),
              child: _buildPanda(p));
        },
      ),
    );
  }

  Widget _buildPanda(Panda panda) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Row(
        children: <Widget>[
          Text(panda.name,
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold)),
          Spacer(),
          Text(panda.age.toString() + ' years old '),
          Spacer(),
          ClipOval(
            child: Container(
              color: panda.color,
              height: 24.0,
              width: 24.0,
            ),
          )
        ],
      ),
    );
  }
}
