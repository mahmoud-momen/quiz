import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'News.dart';
import 'Workout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Workout.routeName: (context) => Workout(),
        News.routeName: (context) => News(),
      },
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Workout(),
    News(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_invitation),
            label: 'News',
          ),
        ],
        selectedItemColor: Color(0xff027849),
      ),
    );
  }
}
