import 'package:flutter/material.dart';


class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color textColor = Colors.black;
  static const Color buttonTextColor = Colors.green;
  static const Color backgroundColor = Color(0xFFEEEEEE);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0x91000000);
}

class AppString{
  static const String statisticTextOne = 'Packed';
  static const String statisticTextTwo = 'Validated';
  static const String statisticTextThree = 'In Logistics';
  static const String statisticTextFour = 'In Transit';
  static const String statisticTextFive = 'Delivered';

  static const String statisticValueOne = '700';
  static const String statisticValueTwo = '200';
  static const String statisticValueThree = '100';
  static const String statisticValueFour = '200';
  static const String statisticValueFive = '200';

  static const String ProductcreatedTitle = 'Products Created';
  static const String ProductcreatedValue = '300';

  static const String PackagecreatedTitle = 'Packages Created';
  static const String PackagecreatedValue = '5';

  static const String btnImageTextone = 'START DELIVERY';
  static const String btnImageTexttwo = 'Create DR and deliver them.';

}

class AppTextStyles {
  static const TextStyle commonTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 30.0,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 12.0,
    fontFamily: 'Arial',
  );

  static const TextStyle appBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 24,
    color: AppColors.textColor,
  );

  static const TextStyle btnStartDelivery = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  );
  static const TextStyle btnStartDeliveryText = TextStyle(
    fontSize: 11.0,
    color: Colors.white,
  );

}

class CustomDecorations {
  static const BoxDecoration commonBoxDecoration = BoxDecoration(
    color: AppColors.backgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  );

  static const BoxDecoration decorationWithImage = BoxDecoration(
  image: DecorationImage(
  image: AssetImage('assets/images/bg_imagebtn.png'), // Replace with your image path
  fit: BoxFit.cover,
  ),
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
  );

}