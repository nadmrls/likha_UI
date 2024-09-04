import 'package:flutter/material.dart';
import 'package:sample_ui/dialog/dr_verification.dart';
import 'package:sample_ui/utils/completed_dr_constants.dart';
import 'package:sample_ui/screens/view_DR_screen.dart';

import '../dialog/alert_dialog.dart';

class OrderReceivedContainer extends StatelessWidget {
  const OrderReceivedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ClipRRect(
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  'assets/images/damo-transparent1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 4,
              child: Image.asset(
                'assets/images/deliveryman.png',
                width: 180,
                height: 190,
              ),
            ),
            const Positioned(
              top: 12,
              left: 100,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.orderReceived,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor.withOpacity(1),
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/images/wordmark.png',
                  width: 55,
                  height: 55,
                ),
              ),
            ),
            Positioned(
              right: 78,
              bottom: 15,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor.withOpacity(1),
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/images/logomark.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // showCreateDRVerify(context, 'message');
        showAlertMessage(context, 'message');
      },
      style: TextButton.styleFrom(
        foregroundColor: AppColors.buttonTextColor,
        textStyle: AppTextStyles.seeAllStyle,
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.seeAllText,
            style: AppTextStyles.seeAllStyle,
          ),
          SizedBox(width: 2), // Add some space between text and icon
          Icon(Icons.arrow_forward_ios_rounded, color: AppColors.primaryColor,), // Choose the icon you want
        ],
      ),
    );
  }
}

class DRList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DRList({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.53,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(AppData.dataListDR.length, (index) {
            return GestureDetector(
              onTap: () {
                print(AppData.dataListDR[index]['drID']!);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ViewDR()),
                );

              },
              child: Container(
                width: screenWidth * 0.9,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppData.dataListDR[index]['drID']!,
                      style: AppTextStyles.commonTextStyleOne,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppData.dataListDR[index]['address']!,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    Text(
                      AppData.dataListDR[index]['number']!,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppData.dataListDR[index]['date']!,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                    Text(
                      AppData.dataListDR[index]['time']!,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
