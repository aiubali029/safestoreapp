import 'package:flutter/material.dart';
import 'package:my_project/screens/compare_adds.dart';
import 'package:my_project/screens/home.dart';
import 'package:my_project/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List _pages = [Home(), CompareAdds(), Profile()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safe Store"),
        backgroundColor: Colors.orange
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,

          ),
          label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows_outlined),
          label: "Compare Adds"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
        label:  "Profile",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
      ),

    );
  }
}
