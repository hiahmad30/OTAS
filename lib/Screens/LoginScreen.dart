import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        body: Stack(
          children: [
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
                            "Welcome Back",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Please enter your username and password"),
                        ],
                      ),
                    ),
                    Padding(
                      //Add padding around textfield
                      padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'USERNAME',
                              style: TextStyle(color: AppColors.primaryColor),
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
                                borderSide: BorderSide(color: Colors.black),
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
                      padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'PASSWORD',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
                          TextFormField(
                            //    onSaved: (val) => _pass = val,
                            obscureText: true, // _passwordVisible1,
                            decoration: InputDecoration(
                              //Add th Hint text here.

                              hintText: "*********",
                              border: OutlineInputBorder(
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
                            10.0,
                          ),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              height: 1.5,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: AppColors.primaryColor,
                          child: Text(
                            "Sign In",
                          ),
                          onPressed: () {
                            Get.to(BottomBarPage());
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 40),
              child: Container(
                child: Text('Sign in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
