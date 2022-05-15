import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/screens/page_four.dart';
import 'package:navigation_bar/screens/page_one.dart';
import 'package:navigation_bar/screens/page_three.dart';
import 'package:navigation_bar/screens/page_two.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPage = 0;
  final List<Widget> _pages = [PageOne(), PageTwo(), PageThree(), PageFour()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Circle Bottom Navigation Example',
             style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
      body: _pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(Icons.schedule_outlined, size: 30),
          Icon(Icons.settings_outlined, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        }
      ),
    );
  }
}
