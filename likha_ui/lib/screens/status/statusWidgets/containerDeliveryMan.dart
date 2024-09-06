import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';



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