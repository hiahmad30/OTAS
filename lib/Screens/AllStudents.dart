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
        name: 'Mohamed Abdelkader A..',
        photoUrl: 'https://picsum.photos/id/237/200/300'),
    StudentModel(
        status: 'Pending Review',
        counter: 0,
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
            child: Stack(
              children: [
                SvgPicture.asset('assets/back.svg',
                    width: Get.width, fit: BoxFit.fill),
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
                        height: Get.height * 0.7,
                        width: Get.width,
                        child: ListView.builder(
                            itemCount: demoStudents.length,
                            itemBuilder: (BuildContext context, int index) {
                              return getStudentCard(demoStudents[index]);
                            })),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39.0, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Students",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        //Add padding around textfield
                        padding:
                            EdgeInsets.only(top: 15.0, left: 10, right: 10),
                        child: Container(
                          width: Get.width * 0.83,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                prefixStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                hintStyle: GoogleFonts.rubik(
                                  color: Color(0xff881832).withOpacity(0.24),
                                  fontSize: 10,
                                ),
                                hintText:
                                    "Search by Student name or Passport ID…",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.to(() => StudentProfile(
                studentModel: studentModel,
              ));
        },
        child: Container(
          height: 50,
          color: AppColors.listColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                        width: 20,
                      ),
                      Container(
                          width: 120,
                          height: 40,
                          child: Text(
                            studentModel.name,
                            overflow: TextOverflow.fade,
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5),
                          child: Text(
                            studentModel.status,
                            style: TextStyle(
                              fontSize: 8,
                              color: studentModel.status == 'paid'
                                  ? Colors.green
                                  : studentModel.status ==
                                          'Awaiting Cond. Acceptance'
                                      ? Color(0xffC15614)
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
                              : studentModel.status ==
                                      'Awaiting Cond. Acceptance'
                                  ? Color(0xffC15614)
                                  : Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    studentModel.counter > 0
                        ? Container(
                            width: 20,
                            child: Text('+' + studentModel.counter.toString(),
                                style: TextStyle(color: Color(0xff9C9F98))))
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
      ),
    );
  }
}
