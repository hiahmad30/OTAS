import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';

import 'package:otasagent/Models/AnnouncementModel.dart';
import 'package:otasagent/Screens/MyProfile.dart';
import '../Resources.dart';
import 'AllStudents.dart';
import 'Notification.dart';
import 'StatePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StatePage(),
    AllStudents(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: Container(
        //  margin: EdgeInsets.only(bottom: 40),
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Container(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Text(
                                      'Welcome back',
                                      style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          color: AppColors.headingTextColor,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Mohamed Habaza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryColor,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(MyProfile());
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset('assets/avatar.png',
                                        width: 50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        'Announcements',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.c1Color,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.height * 0.7,
                width: Get.width,
                child: ListView.builder(
                  itemCount: announcements.length,
                  itemBuilder: (BuildContext context, int index) {
                    return getcard(announcements[index]);
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  getcard(AnnouncemtModel announcemtModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                          child: Image.asset(announcemtModel.imgUrl,
                              height: 30, width: 30),
                        ),
                      ),
                      Container(
                          child: Text(
                        '${announcemtModel.name}',
                        style: TextStyle(
                            color: AppColors.dateTimeColor, fontSize: 14),
                      )),
                    ],
                  ),
                  Container(
                      child: Text(
                    '${announcemtModel.dateTime}',
                    style:
                        TextStyle(color: AppColors.dateTimeColor, fontSize: 9),
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Linkify(
                  onOpen: (link) async {
                    print(link);
                  },
                  text: '${announcemtModel.message}',
                  style: TextStyle(color: Color(0xff333333), fontSize: 12),
                  linkStyle: TextStyle(color: Color(0xff2595B3)),
                ),
              ),
              // Container(
              //     child: Text(
              //   '${announcemtModel.message}',
              //   style: TextStyle(fontSize: 14),
              // )),
            ],
          ),
        ),
      ),
    );
  }

  List<AnnouncemtModel> announcements = [
    AnnouncemtModel(
      'Istanbul Medipol University',
      'assets/univ1.png',
      'Regarding Istanbul Medipol University, bachelor admissions are open for undergraduate programs 2021/2022 in fall term.',
      '12/04/2021 11:22 AM',
    ),
    AnnouncemtModel(
      'Istanbul Commerce University',
      'assets/univ2.png',
      'Regarding Commerce university online registration link: http://internationaloffice.ticaret.edu.tr/online-registration/ ',
      '12/04/2021 11:22 AM',
    ),
    AnnouncemtModel(
      'Istanbul Gelisim University',
      'assets/univ3.png',
      'Dear Partners, Regarding Gelisim University - Topic: EXAM ORIENTATION FOR INTERNATIONAL STUDENTS Time: Apr 9, 2021 10:30 Istanbul Join Zoom Meeting https://zoom.us/j/92995105197?pwd=S3ZSR3Fuazdicmp0YUJCVGkzQ1paUT09 Meeting ID: 929 9510 5197 Passcode: 851928',
      '02/04/2021 08:44 AM',
    ),
    AnnouncemtModel(
      'Istanbul Medipol University',
      'assets/univ1.png',
      'Regarding Istanbul Medipol University, bachelor admissions are open for undergraduate programs 2021/2022 in fall term.',
      '12/04/2021 11:22 AM',
    )
  ];
}
