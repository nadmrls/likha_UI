import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class OrderTracker extends StatelessWidget {
  final List<String> stages = [
    "Order Placed",
    "Processing",
    "Shipped",
    "Out for Delivery",
    "Delivered"
  ];

  final  List<String> leftTexts = [
    "Today ",
    "Today ",
    "Today ",
    "Today ",
    "Today "
  ];

  final List<String> rightTexts = [
    "Order Placed",
    "Packed",
    "Shipped",
    "In Transit",
    "Delivered"
  ];

  final List<String> additionalRightTexts = [
    "Preparing your Order",
    "Item Packed Waiting for Delivery",
    "Item has been shipped",
    "Item is out for Delivery",
    "Item Delivered Successfully."
  ];

  final List<String> additionalLeftTexts = [
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
  ];

  final int currentStage = 5;

  OrderTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: stages.length,
            itemBuilder: (context, index) {
              return OrderTrackerStep(
                stage: stages[index],
                leftText: leftTexts[index],
                rightText: rightTexts[index],
                additionalRightText: additionalRightTexts[index],
                additionalLeftText: additionalLeftTexts[index],
                isActive: index <= currentStage,
                isCompleted: index < currentStage,
              );
            },
          ),
        ),
      ],
    );
  }
}

class OrderTrackerStep extends StatelessWidget {
  final String stage;
  final String leftText;
  final String rightText;
  final String additionalRightText;
  final String additionalLeftText;
  final bool isActive;
  final bool isCompleted;

  const OrderTrackerStep({
    super.key,
    required this.stage,
    required this.leftText,
    required this.rightText,
    required this.additionalRightText,
    required this.additionalLeftText,
    required this.isActive,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Expanded(
            child: Column(
              children: [
                Text(
                  leftText,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 10,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  additionalLeftText,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 8,
                    color: Colors.grey,

                  ),

                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 5,),
        Column(
          children: [
            Icon(
              isCompleted
                  ? Icons.check_circle
                  : isActive
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: isCompleted || isActive
                  ? Colors.green
                  : Colors.grey,
            ),
            if (stage != "Delivered") // Don't show the line after the last stage
              Container(
                height: 25,
                width: 2,
                color: isCompleted || isActive
                    ? Colors.green
                    : Colors.grey,
              ),
          ],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rightText,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                additionalRightText,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

