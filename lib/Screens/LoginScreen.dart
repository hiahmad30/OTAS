import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            child: Stack(
              children: [
                SvgPicture.asset('assets/back.svg',
                    width: Get.width, fit: BoxFit.fill),
                Align(
                  alignment: Alignment.bottomRight,
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
                          padding: const EdgeInsets.only(
                              left: 40.0, top: 50, bottom: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome back",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Please enter your username and password",
                                  style: TextStyle(color: Color(0xff757482))),
                            ],
                          ),
                        ),
                        Padding(
                          //Add padding around textfield
                          padding:
                              EdgeInsets.only(top: 15.0, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'USERNAME',
                                  style:
                                      TextStyle(color: AppColors.primaryColor),
                                ),
                              ),
                              TextFormField(
                                //   controller: _emailControllerlogin,
                                keyboardType: TextInputType.emailAddress,

                                // onSaved: (val) => _email = val,
                                decoration: InputDecoration(
                                  //Add th Hint text here.
                                  hintText: "Ahmet Süngeriçlioğlu",
                                  //  hintStyle: MyResources.hintfontStyle,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.check,
                                        color: AppColors.primaryColor,
                                      ),
                                      onPressed: () {}),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          //Add padding around textfield
                          padding:
                              EdgeInsets.only(top: 15.0, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'PASSWORD',
                                  style:
                                      TextStyle(color: AppColors.primaryColor),
                                ),
                              ),
                              TextFormField(
                                //    onSaved: (val) => _pass = val,
                                obscureText: true, // _passwordVisible1,
                                decoration: InputDecoration(
                                  //Add th Hint text here.

                                  hintText: "*********",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.check,
                                        color: AppColors.primaryColor,
                                      ),
                                      onPressed: () {}),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              // Get.to(() => forgetpassword());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(
                                20.0,
                              ),
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.rubik(
                                  color: AppColors.primaryColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, left: 10, right: 10),
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 45,
                              child: MaterialButton(
                                textColor: Colors.white,
                                color: AppColors.primaryColor,
                                child: Text(
                                  "Sign In",
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
                Padding(
                  padding: const EdgeInsets.only(top: 39.0, left: 30),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
