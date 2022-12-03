import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao_01/screens/chat_room_screen.dart';
import 'package:kakao_01/screens/chat_screen.dart';
import 'package:kakao_01/screens/friend_screen.dart';
import 'package:kakao_01/screens/more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsis), label: ''),
        ],
      ),
    );
  }
}
