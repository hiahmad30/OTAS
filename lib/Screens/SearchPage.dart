import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:google_fonts/google_fonts.dart';
import 'package:otasagent/Models/AnnouncementModel.dart';
import 'package:otasagent/Models/ProgrammeModel.dart';
import '../Resources.dart';
import 'AllStudents.dart';
import 'HomePage.dart';
import 'Notification.dart';
import 'StatePage.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

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
                              'PROGRAMS SEARCH',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      //Add padding around textfield
                      padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
                      child: Container(
                        width: Get.width * 0.83,
                        decoration: BoxDecoration(
                          color: Color(0xffF5F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              prefixStyle:
                                  TextStyle(color: AppColors.primaryColor),
                              hintStyle: GoogleFonts.rubik(
                                color:
                                    AppColors.dateTimeColor.withOpacity(0.24),
                                fontSize: 13,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText:
                                  "  Search by program name. e.g. Business",
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.white),
                              //   borderRadius: BorderRadius.circular(10.0),
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.height * 0.7,
                width: Get.width,
                child: ListView.builder(
                  itemCount: programModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return getcard(programModel[index]);
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  getcard(ProgramModel programModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Container(
        constraints: BoxConstraints(minHeight: 100),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF9F9F9),
            boxShadow: [
              BoxShadow(
                color: Color(0xff1B7289),
              ),
            ]),
        //  height: 150,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(programModel.imgUrl, width: 30),
                        ),
                      ),
                      Container(
                          child: Text(
                        '${programModel.univName}',
                        style: TextStyle(
                            color: AppColors.dateTimeColor, fontSize: 12),
                      )),
                    ],
                  ),
                  Container(
                      child: Text(
                    '${programModel.place}',
                    style:
                        TextStyle(color: AppColors.dateTimeColor, fontSize: 9),
                  )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    '${programModel.programName}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),
                  Row(
                    children: [
                      Container(
                          child: Text(
                        'Tuition:',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.dateTimeColor,
                        ),
                      )),
                      Text(
                        'USD ',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.dateTimeColor,
                            decoration: TextDecoration.lineThrough),
                      ),
                      Container(
                          child: Text(
                        '${programModel.tutuion}',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.dateTimeColor,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Text(
                        ' USD ',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                          child: Text(
                        '${programModel.discount}',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      )),
                      Text(
                        ' per Year ',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              child: Text(
                            'Degree:',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.dateTimeColor,
                            ),
                          )),
                          Container(
                              child: Text(
                            '${programModel.degree}',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.dateTimeColor,
                            ),
                          )),
                        ],
                      ),
                      Icon(
                        Icons.share,
                        color: AppColors.primaryColor,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ProgramModel> programModel = [
    ProgramModel(
        'Istanbul Medipol University',
        'assets/univ1.png',
        'Bachelor of Business Administration (English)',
        '3500',
        'Bachelor',
        'Istanbul, Turkey',
        '7000'),
    ProgramModel(
        'Istanbul Medipol University',
        'assets/univ1.png',
        'Bachelor of Business Administration (English)',
        '3500',
        'Bachelor',
        'Istanbul, Turkey',
        '7000'),
    ProgramModel(
        'Istanbul Gelisim University',
        'assets/univ3.png',
        'Bachelor of Business Administration (English)',
        '3500',
        'Bachelor',
        'Istanbul, Turkey',
        '7000'),
  ];
}
