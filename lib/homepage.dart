import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/chat.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
int _selectedIndex = 0;
void _navigateBottomNavBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

final List<Widget> _children = [
   UserHome(),
  const UserSearch(),
  const Userchat(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
        ],
      ),
    );
  }
}
