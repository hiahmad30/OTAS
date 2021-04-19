import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Resources.dart';
import 'Screens/HomePage.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/Widgets/ButtomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OTAS4u',
      theme: ThemeData(
          textTheme: GoogleFonts.rubikTextTheme(
            Theme.of(context).textTheme,
          ),
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.primaryColor),
      home: LoginPage(),
    );
  }
}
