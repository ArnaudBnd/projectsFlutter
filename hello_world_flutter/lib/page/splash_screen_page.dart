import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/login_page.dart';
import 'package:hello_world_flutter/page/menu_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      String jsonString = sharedPreferences.getString('user');
      print(jsonString);

      if (jsonString == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MenuPageWidget()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: Image.asset(
          'assets/téléchargement.jpeg',
          width: 121.0,
          height: 121.0,
        )));
  }
}
