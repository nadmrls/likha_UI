import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class Rowbuttons extends StatelessWidget {
  final VoidCallback onPngButtonPressed;
  final VoidCallback onWordButtonPressed;
  final VoidCallback onPrintButtonPressed;

  const Rowbuttons({
    super.key,
    required this.onPngButtonPressed,
    required this.onWordButtonPressed,
    required this.onPrintButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding if needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Using Expanded to make the button take available space
          Expanded(
            child: ElevatedButton(
              onPressed: onPngButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text(AppStrings.pngButtonText),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: onWordButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text(AppStrings.wordButtonText),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: onPrintButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text(AppStrings.printButtonText),
            ),
          ),
        ],
      ),
    );
  }
}
