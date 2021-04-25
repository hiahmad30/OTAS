import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Resources.dart';
import 'Widgets/ButtomBar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              height: Get.height * 0.8,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 60, bottom: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Image.asset(
                              'assets/logo.png',
                              width: 100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 100),
                          child: Text("Welcome to ...",
                              style: TextStyle(
                                  color: Color(0xff91A6AC), fontSize: 18)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "OTAS Mobile App",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //Add padding around textfield
                    padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                    child: TextFormField(
                      //   controller: _emailControllerlogin,
                      keyboardType: TextInputType.emailAddress,

                      // onSaved: (val) => _email = val,
                      decoration: InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.at, size: 18),
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixStyle: TextStyle(color: Colors.grey),
                        // prefix: Image.asset(
                        //   'assets/email.png',
                        // ),
                        //Add th Hint text here.
                        hintText: "|  Enter your Username",
                        //  hintStyle: MyResources.hintfontStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    //Add padding around textfield
                    padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          //    onSaved: (val) => _pass = val,
                          obscureText: true, // _passwordVisible1,
                          decoration: InputDecoration(
                            //Add th Hint text here.
                            prefixIcon: Icon(Icons.lock_open_outlined),
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixStyle: TextStyle(color: Colors.grey),
                            hintText: "|  Enter your Username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        // Get.to(() => forgetpassword());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(
                          20.0,
                        ),
                        child: Text(
                          "Lost your Password?",
                          style: GoogleFonts.rubik(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                    child: Center(
                      child: Container(
                        width: 300,
                        height: 60,
                        child: MaterialButton(
                          textColor: Colors.white,
                          color: AppColors.primaryColor,
                          child: Text(
                            "Login",
                          ),
                          onPressed: () {
                            Get.to(() => BottomBarPage());
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
