import 'package:flutter/material.dart';

import '../../Resources.dart';
import '../AllStudents.dart';
import '../HomePage.dart';
import '../Notification.dart';
import '../StatePage.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  Widget selectedWidget = HomePage();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StatePage(),
    AllStudents(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedWidget = _widgetOptions[index];
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedWidget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _onItemTapped(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded, color: AppColors.primaryColor),

            icon: new Icon(Icons.home_rounded, color: Colors.grey),
            title: Text(
              'Home',
              style: TextStyle(color: AppColors.primaryColor),
            ),
            // label: 'Home'
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.monitor, color: AppColors.primaryColor),
            icon: Icon(Icons.monitor, color: Colors.grey),
            title: Text(
              'Stats',
              style: TextStyle(color: AppColors.primaryColor),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon:
                Icon(Icons.account_circle, color: AppColors.primaryColor),
            icon: Icon(Icons.account_circle, color: Colors.grey),
            title: Text(
              'Students',
              style: TextStyle(color: AppColors.primaryColor),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.notifications_outlined,
                color: AppColors.primaryColor),
            icon: Icon(Icons.notifications_outlined, color: Colors.grey),
            title: Text(
              'Notifications',
              style: TextStyle(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
