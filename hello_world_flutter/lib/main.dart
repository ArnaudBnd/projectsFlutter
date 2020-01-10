import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/menu_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // defini la structure de l'app complete
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPageWidget(),
      //home: LoginPage(),
      //home: SplashScreenPage(),
    );
  }
}
