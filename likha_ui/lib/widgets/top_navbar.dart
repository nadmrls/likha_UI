import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class TopNavbar extends StatelessWidget {
  final VoidCallback? onButtonPressed;
  final String centerText;
  final bool rightButton;
  final String rightButtonText;

  const TopNavbar({
    super.key,
    required this.centerText,
    required this.rightButton,
    this.rightButtonText = 'Edit',
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[300],
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          Text(
            centerText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Arial',
            ),
          ),
          rightButton
              ? TextButton(
                  onPressed: onButtonPressed,
                  child: Text(
                    rightButtonText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                )
              : Container(
                  width: 50,
                ),
        ],
      ),
    );
  }
}
