import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:likhaui/screens/status/statusWidgets/orderTracker.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryStatusWidget extends StatelessWidget {
  final double screenWidth;
  final String contact;

  const DeliveryStatusWidget({
    super.key,
    required this.screenWidth,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      padding:
          const EdgeInsets.only(top: 15.0, left: 15, right: 10, bottom: 15.0),
      decoration: BoxDecoration(
        color: AppColors.lightGreenColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppStrings.deliveryStatus,
                style: AppTextStyles.deliveryStatusStyle,
              ),
              Row(
                children: [
                  Text(
                    contact,
                    style: AppTextStyles.deliveryStatusStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: contact));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text(
                          "Contact Information Copied to Clipboard",
                          textAlign: TextAlign.center,
                        )),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primaryColor,
                      textStyle: AppTextStyles.copyButtonStyle,
                    ),
                    child: const Text(AppStrings.copyButtonText),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 300,
            height: 250,
            child: OrderTracker(),
          ),
        ],
      ),
    );
  }
}
