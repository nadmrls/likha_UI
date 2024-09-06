import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class BottomButton extends StatelessWidget {
  final String buttontxt;
  final VoidCallback onButtonPressed;
  const BottomButton({super.key, required this.buttontxt, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: onButtonPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
        ),
        child:  Text(buttontxt),
      ),
    );
  }
}