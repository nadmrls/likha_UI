import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/custom_widgets/list_DR.dart';
import 'package:likhaui/widgets/top_navbar.dart';

class Seealldr extends StatelessWidget {
  const Seealldr({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TopNavbar(
                      centerText: 'DR List',
                      rightButton: false,
                      onButtonPressed: () {},
                    )),
                SizedBox(
                  height: 15,
                ),
                DRList(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
