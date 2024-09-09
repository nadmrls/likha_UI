import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';


class DrCategory extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DrCategory({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: screenWidth * 0.0452, right: screenWidth * 0.0452),
      padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 25, right: 25),
      decoration: CustomDecorations.commonBoxDecoration,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResultAllDR(title: AppStrings.statisticTextTwo, value: AppStrings.statisticValueTwo,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppStrings.statisticTextOne, value: AppStrings.statisticValueOne,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppStrings.statisticTextThree, value: AppStrings.statisticValueThree,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppStrings.statisticTextFour, value: AppStrings.statisticValueFour,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppStrings.statisticTextFive, value: AppStrings.statisticValueFive,),
        ],
      ),
    );
  }
}

class ResultAllDR extends StatelessWidget {
  final String title;
  final String value;

  const ResultAllDR({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.contain, // or BoxFit.fill, BoxFit.cover, etc.
              child: Text(
                title,
                style: AppTextStyles.allDRstyletitle,
              ),
            ),
            const SizedBox(height: 5),
            FittedBox(
              fit: BoxFit.contain, // or BoxFit.fill, BoxFit.cover, etc.
              child: Text(
                value,
                style: AppTextStyles.allDRstylevalue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
