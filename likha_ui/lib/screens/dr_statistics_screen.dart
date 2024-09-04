import 'package:flutter/material.dart';
import 'package:sample_ui/widgets/dr_statistics_widgets.dart';
import 'package:sample_ui/widgets/filter_dr_widgets.dart';
import 'package:sample_ui/widgets/bottom_navbar.dart';


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
    return Scaffold(
        bottomNavigationBar: const BottomNav(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xFF5CA47A),
          child: const Icon(Icons.file_copy_outlined, size: 30.0,
            color: Colors.white,),
          onPressed: () {
          },
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22, right: 22),
                  child: const SearchLogoWidget()),

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
              const ButtonAndContainers()
            ],
          )
          ,)
    );
  }
}

