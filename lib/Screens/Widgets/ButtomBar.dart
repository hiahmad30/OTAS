import 'package:flutter/material.dart';

import '../../Resources.dart';
import '../AllStudents.dart';
import '../HomePage.dart';
import '../Notifications.dart';
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
    Notifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedWidget = _widgetOptions[index];
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
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[
                    Colors.greenAccent[200],
                    Colors.blueAccent[200]
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(Icons.home_rounded, color: AppColors.primaryColor),
            ),
            icon: new Icon(Icons.home_rounded, color: Colors.grey),
            title: Text('Home'),
            // label: 'Home'
          ),
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: <Color>[
                    AppColors.primaryColor,
                    AppColors.primaryColor,
                  ],
                  // tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.monitor,
              ),
            ),
            icon: Icon(Icons.monitor, color: Colors.grey),
            title: Text('Stats'),
          ),
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: <Color>[
                    AppColors.primaryColor,
                    AppColors.primaryColor,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Icon(Icons.account_circle),
            ),
            icon: Icon(Icons.account_circle, color: Colors.grey),
            title: Text('Students'),
          ),
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: <Color>[
                    AppColors.primaryColor,
                    AppColors.primaryColor,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.notifications_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            icon: Icon(Icons.notifications_outlined, color: Colors.grey),
            title: Text('Notifications'),
          ),
        ],
      ),
    );
  }
}
