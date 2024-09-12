import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drWidgets/monthlySales.dart';
import 'package:likhaui/utils/values/constants.dart';

class GraphWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const GraphWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecorations.commonBoxDecoration,
      width: screenWidth * 0.44,
      height: screenHeight * 0.3,
      child: Padding( // Added padding for a better layout
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0.05 ),
              child: const Column(
              children: [
                Text('300', style: AppTextStyles.allDRstylevalue),
                Text('Statistics', style: AppTextStyles.titleTextStyle),
              ],
        ),
            ),
             Expanded(child: MonthlySalesScreen()),
          ],
        ),
      ),
    );
  }
}