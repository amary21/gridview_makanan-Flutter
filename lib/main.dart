import 'package:flutter/material.dart';
import '_breakfast/breakfast_food.dart';
import '_desert/desert_food.dart';

const PrimaryColor = const Color(0xFFFF0D86);

void main() {
  runApp(MaterialApp(
    title: "Makanan Khas Indonesia",
    theme: ThemeData(primaryColor: PrimaryColor),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _children = [BreakfastFood(), DesertFood()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Makanan Khas Indonesia")),
      body: Center(
        child: _children.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast), title: Text("Breakfast")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Desert"))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
