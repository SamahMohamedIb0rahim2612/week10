import 'package:flutter/material.dart';
import 'package:week10/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff0a0321),
            accentColor: Colors.pink,
          textTheme:TextTheme(bodyText1: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(elevation: 0,centerTitle: true)),

      home:Home(),
    );
  }
}

