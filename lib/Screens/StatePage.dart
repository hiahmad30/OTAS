import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../Resources.dart';

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  List<Map<String, dynamic>> cardModel = [
    {
      'name': 'Total Apps',
      'icon': 'assets/statsicon.png',
      'figure': '8.462',
      'color': AppColors.c1Color
    },
    {
      'name': 'Total Paid',
      'icon': 'assets/statsicon.png',
      'figure': '56',
      'color': AppColors.c2dColors,
    },
    {
      'name': 'Completed Apps',
      'icon': 'assets/statsicon.png',
      'figure': '12',
      'color': AppColors.c3Color
    },
    {
      'name': 'Awaiting Conditional Acceptance',
      'icon': 'assets/statsicon.png',
      'figure': '322',
      'color': AppColors.c4Color
    },
    {
      'name': 'Awaiting Payment',
      'icon': 'assets/statsicon.png',
      'figure': '8462',
      'color': AppColors.c5Color
    },
    {
      'name': 'Awaiting Final Acceptance',
      'icon': 'assets/statsicon.png',
      'figure': '1200',
      'color': AppColors.c5Color
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
          // width: Get.width,
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            'STATISTICS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                                items: <String>['2020/2021', '2021/2022']
                                    .map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                hint: Text(
                                  '2020/2021',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[400], blurRadius: 1),
                            ],
                          ),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 40,
                          child: Row(
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                  items: <String>[
                                    'jan 01,2021',
                                    'April 24,2021'
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  hint: Text('May 24,2021 '),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                                // width: 20,
                                //  indent: 200,
                                //  endIndent: 200,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                  items: <String>[
                                    'May 24,2021 ',
                                    'May 24,2021 '
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                  hint: Text(
                                    'May 24,2021',
                                    //style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.56,
                      child: StaggeredGridView.countBuilder(
                        padding: const EdgeInsets.all(8.0),
                        crossAxisCount: 4,
                        itemCount: cardModel.length, //staticData.length,
                        itemBuilder: (context, index) {
                          return _getCard2(cardModel[index]);
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.count(
                            2, index != 1 && index != 2 ? 2.1 : 2.3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _getCard2(Map<String, dynamic> cardMap) {
    return InkWell(
      onTap: () {
        // Get.to(() => Get.);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cardMap['color'],
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, right: 10, left: 15, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      child: Text(
                        cardMap['name'],
                        style: TextStyle(
                            color: AppColors.cardTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Image.asset(
                      cardMap['icon'],
                      width: 40,
                    ),
                  ],
                ),
                Text(
                  cardMap['figure'],
                  style: TextStyle(
                      color: AppColors.cardTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
