import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otasagent/Models/StudentsModel.dart';

import '../Resources.dart';
import 'StudentProfile.dart';

class AllStudents extends StatefulWidget {
  @override
  _AllStudentsState createState() => _AllStudentsState();
}

class _AllStudentsState extends State<AllStudents> {
  List<StudentModel> demoStudents = [
    StudentModel(
        status: 'pending',
        counter: 1,
        phone: '00905497109000',
        address:
            'Şehremini Mah, Ahmet Vefik Paşa Cd. No: 6/A, 34104 Fatih/İstanbul',
        email: 'example@gmail.com',
        passport: 'XR33442',
        degree: 'Bachelor of Science',
        name: 'Mohamed Abdelkader ',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'Pending Review',
        counter: 0,
        phone: '00905497109000',
        name: 'MOHAMMAD ISSAM MOHAMMAD ABU FARHAH',
        address:
            'Şehremini Mah, Ahmet Vefik Paşa Cd. No: 6/A, 34104 Fatih/İstanbul',
        email: 'example@gmail.com',
        degree: 'Bachelor of Science',
        passport: 'XR33442',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'Awaiting Cond. Acceptance',
        counter: 0,
        phone: '00905497109000',
        degree: "Bachelor of Business Administration (English)",
        name: 'Mohamed Abdelkader A..',
        address:
            'Şehremini Mah, Ahmet Vefik Paşa Cd. No: 6/A, 34104 Fatih/İstanbul',
        email: 'example@gmail.com',
        passport: 'XR33442',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'Awaiting Final Acceptance',
        counter: 2,
        degree: 'Bachelor of Science',
        phone: '00905497109000',
        address:
            'Şehremini Mah, Ahmet Vefik Paşa Cd. No: 6/A, 34104 Fatih/İstanbul',
        email: 'example@gmail.com',
        passport: 'XR33442',
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/200/300'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 39.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset('assets/logo.png', width: 80),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              child: Text(
                                'ALL STUDENTS',
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
                Padding(
                  //Add padding around textfield
                  padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                  child: Container(
                    width: Get.width * 0.90,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefix: SizedBox(
                            width: 20,
                          ),
                          suffixIcon: Icon(Icons.search),
                          suffixStyle: TextStyle(
                            fontSize: 20,
                          ),
                          hintStyle: GoogleFonts.rubik(
                            color:
                                AppColors.dateTimeColor, //.withOpacity(0.24),
                            fontSize: 13,
                          ),
                          hintText: "Search for student by name or passport ID",
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        height: Get.height * 0.67,
                        width: Get.width,
                        child: ListView.builder(
                            itemCount: demoStudents.length,
                            itemBuilder: (BuildContext context, int index) {
                              return getStudentCard(demoStudents[index]);
                            })),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getStudentCard(StudentModel studentModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
      child: InkWell(
        onTap: () {
          Get.to(() => StudentProfile(
                studentModel: studentModel,
              ));
        },
        child: Container(
          height: 50,
          color: AppColors.listColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //  width: Get.width * 0.6,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: studentModel.photoUrl != null
                          ? Image.network(
                              studentModel.photoUrl,
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              child: Icon(Icons.no_photography),
                              width: 30,
                              height: 30,
                            ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: Get.width * 0.40,
                        height: 20,
                        child: Text(
                          studentModel.name,
                          style: TextStyle(fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 23,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0, right: 2),
                        child: Text(
                          studentModel.status,
                          style: TextStyle(
                            fontSize: 10,
                            color: studentModel.status == 'paid'
                                ? Colors.green
                                : studentModel.status ==
                                        'Awaiting Cond. Acceptance'
                                    ? AppColors.primaryColor
                                    : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      border: Border.all(
                        color: studentModel.status == 'paid'
                            ? Colors.green
                            : studentModel.status == 'Awaiting Cond. Acceptance'
                                ? AppColors.primaryColor
                                : Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  studentModel.counter > 0
                      ? Container(
                          width: 20,
                          child: Text('  +' + studentModel.counter.toString(),
                              style: TextStyle(
                                  color: Color(0xff9C9F98), fontSize: 12)))
                      : Container(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff9C9F98),
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
