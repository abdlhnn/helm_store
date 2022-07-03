import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helm_store/home_screen.dart';
import 'package:helm_store/theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;

  List<Widget> widgetList = [
    HomeScreen(),
    Text(' 2'),
    Text(' 3'),
    Text(' 4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          iconSize: 24,
          selectedItemColor: blackC,
          unselectedItemColor: blackC.withOpacity(0.38),
          showUnselectedLabels: true,
          onTap: (int selectedIndex) {
            setState(() {
              _index = selectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favotite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mode_comment), label: 'Comment'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      body: Center(child: widgetList.elementAt(_index)),
    );
  }
}
