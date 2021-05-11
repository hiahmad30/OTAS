import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasagent/Models/StudentsModel.dart';

import '../Resources.dart';

class StudentProfile extends StatefulWidget {
  final StudentModel studentModel;

  const StudentProfile({Key key, this.studentModel}) : super(key: key);
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.primaryColor,
        body: Container(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10.0, left: 20, top: 50, bottom: 20),
                          child: Icon(Icons.arrow_back,
                              size: 25, color: AppColors.dateTimeColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, top: 30),
                          child: Text(
                            'All Students',
                            style: TextStyle(
                                color: AppColors.dateTimeColor,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  height: Get.height * 0.8,
                  width: Get.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: widget.studentModel.photoUrl != null
                                  ? Image.network(
                                      widget.studentModel.photoUrl,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    )
                                  : Container(
                                      child: Icon(Icons.no_photography),
                                      width: 80,
                                      height: 80,
                                    ),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width * 0.8,
                          height: 100,
                          child: Text(
                            widget.studentModel.name.toUpperCase(),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 20),
                          child: Divider(
                            color: Colors.grey[100],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          widget.studentModel.degree,
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 150,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.studentModel.status,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: widget.studentModel.status == 'paid'
                                      ? Colors.green
                                      : widget.studentModel.status ==
                                              'Awaiting Cond. Acceptance'
                                          ? AppColors.primaryColor
                                          : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: widget.studentModel.status == 'paid'
                                  ? Colors.green
                                  : widget.studentModel.status ==
                                          'Awaiting Cond. Acceptance'
                                      ? AppColors.primaryColor
                                      : Colors.grey,
                              // color: Colors.green,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            widget.studentModel.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 150,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.studentModel.status,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: widget.studentModel.status == 'paid'
                                      ? Colors.green
                                      : widget.studentModel.status ==
                                              'Awaiting Cond. Acceptance'
                                          ? AppColors.primaryColor
                                          : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: widget.studentModel.status == 'paid'
                                  ? Colors.green
                                  : widget.studentModel.status ==
                                          'Awaiting Cond. Acceptance'
                                      ? AppColors.primaryColor
                                      : Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.book_outlined,
                                          color: AppColors.primaryColor,
                                        ),
                                        Text(
                                          '  PASSPORT ID',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Text(widget.studentModel.passport,
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: AppColors.primaryColor,
                                        ),
                                        Text(
                                          '  PHONE NUMBER',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(widget.studentModel.phone,
                                          textAlign: TextAlign.right,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: AppColors.primaryColor,
                                        ),
                                        Text(
                                          '  EMAIL',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(widget.studentModel.email,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color: AppColors.primaryColor,
                                        ),
                                        Text(
                                          '  ADDRESS',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(widget.studentModel.address,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
