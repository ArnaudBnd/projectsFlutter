import 'package:flutter/material.dart';

class LongListPage extends StatefulWidget {
  @override
  _LongListPageState createState() => _LongListPageState();
}

class _LongListPageState extends State<LongListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long lis Page'),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return _buildItem(index);
          }),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print('Tap item at item $index');
        },
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 48,
              width: 48.0,
              child: ClipOval(
                child: Container(
                  color: Colors.indigoAccent.withOpacity(0.2),
                  child: Image.asset('lake.jpg'),
                ),
              ),
            ),
            Container(width: 12.0),
            Expanded(
              child:
                  Text('AZAZAZAZAZAzaezrerer e ra ze z e az ezae azezaez ae'),
            )
          ],
        ),
      ),
    );
  }
}
