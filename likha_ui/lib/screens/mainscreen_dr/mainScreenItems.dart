import 'package:flutter/material.dart';
import 'package:likhaui/screens/mainscreen_dr/mainscreen_dr_widgets/products.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/custom_widgets/list_DR.dart';
import 'package:likhaui/widgets/topbar_search.dart';

class Mainscreenitems extends StatelessWidget {
  const Mainscreenitems({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TopbarSearch(),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DRList(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                      ),
                      // not sure if will proceed to dr status after the dr list
                      ProductList(
                          screenHeight: screenHeight, screenWidth: screenWidth),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
