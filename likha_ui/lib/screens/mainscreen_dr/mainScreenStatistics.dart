import 'package:flutter/material.dart';
import 'package:likhaui/screens/mainscreen_dr/mainscreen_dr_widgets/dr_category.dart';
import 'package:likhaui/screens/mainscreen_dr/mainscreen_dr_widgets/graphtotal.dart';
import 'package:likhaui/screens/mainscreen_dr/mainscreen_dr_widgets/graphwidget.dart';
import 'package:likhaui/screens/mainscreen_dr/mainscreen_dr_widgets/imagebutton.dart';
import 'package:likhaui/widgets/topbar_search.dart';

class DrStatistics extends StatefulWidget {
  const DrStatistics({super.key});

  @override
  State<DrStatistics> createState() => _DrStatisticsState();
}

class _DrStatisticsState extends State<DrStatistics> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                children: [
                  TopbarSearch(),
          
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          DrCategory(screenHeight: screenHeight, screenWidth: screenWidth,),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GraphWidget(screenWidth: screenWidth, screenHeight: screenHeight,),
                                const SizedBox(width: 15,),
                                GraphTotal(screenWidth: screenWidth, screenHeight: screenHeight,),
                              ],
                            ),
                          ),
                          ImageWithButton(screenWidth: screenWidth, screenHeight: screenHeight,),
                          const SizedBox( height: 10,),

                        ],
                      ),
                    ))
          
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

