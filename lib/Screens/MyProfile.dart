import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otasagent/Models/UserModel.dart';

import '../Resources.dart';

class MyProfile extends StatelessWidget {
  UserModel userModel = UserModel('Mohamed Habaza', 'habaza@oktamam.com',
      'Marketing Manager', 'Marketing Manager', '04343434344');
  TextEditingController emailContrller =
      TextEditingController(text: 'habaza@oktamam.com');
  TextEditingController titleContrller =
      TextEditingController(text: 'Marketing Manager');
  TextEditingController phoneContrller =
      TextEditingController(text: '04343434344');
  TextEditingController organContrller =
      TextEditingController(text: 'Marketing Manager');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(children: [
              Container(
                height: 210,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 30),
                          child: Container(
                            child: Image.asset('assets/logo.png', width: 80),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, right: 20),
                          child: Container(
                            child: Text(
                              'MY PROFILE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/avatar.png', width: 100),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${userModel.name}',
                        style: TextStyle(
                            fontSize: 20,
                            // color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CHANGE PASSWORD?',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'LOG OUT',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 10, right: 10),
                      child: TextField(
                        controller: emailContrller,
                      ),
                    ),
                    Text(
                      'Title',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 10, right: 10),
                      child: TextField(
                        controller: titleContrller,
                      ),
                    ),
                    Text(
                      'Organization',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 10, right: 10),
                      child: TextField(
                        controller: organContrller,
                      ),
                    ),
                    Text(
                      'Phone',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 10, right: 10),
                      child: TextField(
                        controller: phoneContrller,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0, left: 10, right: 10),
                      child: Center(
                        child: Container(
                          width: Get.width * 0.8,
                          height: 60,
                          child: MaterialButton(
                            textColor: Colors.white,
                            color: Color(0xff91A6AC),
                            child: Text(
                              "Save",
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
