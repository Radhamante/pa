
import 'package:flutter/material.dart';
import 'package:pa/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartGloves',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffff0000)
        )
      ),
      routes: {
        "/" :  (context) => Navbar(),
      },
    );
  }
}

