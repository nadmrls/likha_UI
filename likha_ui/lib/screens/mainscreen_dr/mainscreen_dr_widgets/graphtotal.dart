import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';


class GraphTotal extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const GraphTotal({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        padding: EdgeInsets.symmetric(vertical: 5),
        height: screenHeight * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: CustomDecorations.commonBoxDecoration,
              child: Column(
                children: [
                  
                  Container(
                    height: screenHeight * 0.14,
                    width: screenWidth * 0.5,
                    margin: EdgeInsets.only(left: 20 ,right: 20),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(AppStrings.ProductcreatedTitle,
                          style: AppTextStyles.allDRstyletitle,),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(AppStrings.ProductcreatedValue,
                          style: AppTextStyles.packageTitle,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: screenHeight * 0.14,
              width: screenWidth * 0.5,
              decoration: CustomDecorations.commonBoxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Expanded(
                            child: Text(AppStrings.PackagecreatedTitle,
                            style: AppTextStyles.allDRstyletitle,),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(AppStrings.PackagecreatedValue,
                          style: AppTextStyles.packageTitle,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}