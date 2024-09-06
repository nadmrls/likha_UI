import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
            child: Image.asset(
              'assets/images/logomark.png',
              width: 100,
              height: 100,
            ),
          ),
          Image.asset(
            'assets/images/wordmark.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}