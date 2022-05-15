import 'package:navigation_bar/screens/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo NavigationBar',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const Main(),
    );
  }
}
