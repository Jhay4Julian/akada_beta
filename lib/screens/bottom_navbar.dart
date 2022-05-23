import 'package:akada_beta/screens/homepage.dart';
import 'package:akada_beta/screens/main/account_screen.dart';
import 'package:akada_beta/screens/main/mentors_screen.dart';
import 'package:akada_beta/screens/mssg_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({ Key? key }) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;

  final List _children = [
    const HomeScreen(),
    const MessageScreen(),
    const MentorsScreen(),
    const AccountScreen(),
    // const ExitApp(),
    // SystemNavigator.pop()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          iconSize: 30.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: onTabTapped,
          items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.home_rounded),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: '',
              ),
          ]
        ),
    );
  }
}