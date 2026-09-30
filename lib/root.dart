import 'package:flutter/material.dart';
import 'package:kuis_124240015/views/home.dart';
import 'package:kuis_124240015/views/profile.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
  List<Widget> pages = [Homepage(), ProfilePage()];
    return Scaffold(
      appBar: AppBar(title: Text("Pokemon App"),
      backgroundColor: Colors.yellow,),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 243, 220, 17),
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 243, 220, 17),
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}