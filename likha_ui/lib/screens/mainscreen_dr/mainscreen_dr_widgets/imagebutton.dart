import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class ImageWithButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const ImageWithButton({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: screenWidth * 0.0452,
        right: screenWidth * 0.0452,
      ),
      decoration: CustomDecorations.decorationWithImage,
      height: screenHeight * 0.25,
      width: screenWidth * 1,
      child: Stack(
        children: [
          Positioned(
            top: 100,
            left: screenWidth * 0.05,
            child: Image.asset(
              'assets/images/wordmark.png', // Replace with your image path
              height: 80,
              width: 80,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                print('Button pressed');
              },
              child: Container(
                width: 250,
                height: 100,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 147,
                        top: 1,
                        child: Image.asset(
                          'assets/images/logomark.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          AppStrings.btnImageTextone,
                          style: AppTextStyles.btnStartDelivery,
                        ),
                      ),
                      const Positioned(
                        top: 50,
                        left: 20,
                        child: Text(
                          AppStrings.btnImageTexttwo,
                          style: AppTextStyles.btnStartDeliveryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
