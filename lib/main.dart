import 'package:flutter/material.dart';
import 'package:movies_app/ui/splash_screen.dart';
import 'package:movies_app/utils/color.dart';

import 'ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: colorPrimary,
        accentColor: colorAccent,
      ),
      home: SplashScreen()
    );
  }
}


