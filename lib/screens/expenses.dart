import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/credit_card.dart';
import '../widgets/search_bar.dart';

class Expenses extends StatelessWidget {
  Expenses({Key? key}) : super(key: key);
  final dataMap = <String, double>{
    "Flutter": 5,
  };

  final colorList = <Color>[
    Colors.greenAccent,
  ];

  final int segmentedControlGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            ),
            color: const Color(0XFFB5B5B5),
            onPressed: () {
              // Get.to(() => BottomNavBar());
              Get.back();
            }),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Expenses',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(18),
              child: SearchBar(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                'Total Income',
                style: GoogleFonts.inter(
                  color: const Color(0XFFB5B5B5),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                '16023.65',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: CreditCard(
                      color: Color(0xff2b2b9b),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: CreditCard(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 60),
              child: SizedBox(
                // padding: const EdgeInsets.symmetric(horizontal: 6),
                height: 100,
                width: 1000,
                child: PieChart(
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  baseChartColor: Colors.grey[50]!.withOpacity(0.15),
                  colorList: colorList,
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ),
                  // totalValue: 20,
                ),
              ),
            )

            // CupertinoSlidingSegmentedControl<int>(
            //     padding: const EdgeInsets.only(left: 100),
            //     children: const {
            //       0: Text('Header 1'),
            //       1: Text('Header 2'),
            //       2: Text('Header 3'),
            //     },
            //     onValueChanged: (i) {
            //       setState(() {
            //   segmentedControlGroupValue = i;
            // });
            //     })
          ],
        ),
      ),
      // bottomNavigationBar:  BottomNavBar(),
    );
  }
}
