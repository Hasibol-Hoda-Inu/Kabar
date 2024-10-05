import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/screen/bookmark_screen.dart';
import 'package:kabar/presentation/ui/screen/explore_screen.dart';
import 'package:kabar/presentation/ui/screen/home_screen.dart';
import 'package:kabar/presentation/ui/screen/profile_screen.dart';
import 'package:kabar/presentation/ui/widgets/k_app_bar_widget.dart';

import '../utility/app_color.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    ExploreScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(),
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore),
              label: "Explore",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              activeIcon: Icon(Icons.bookmark),
              label: "BookMarks",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_outlined),
              activeIcon: Icon(Icons.person_pin_rounded),
              label: "Profile",
          ),
        ],
      ),
    );
  }
}
