import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color textColor = Colors.black;
  static const Color buttonTextColor = Colors.green;
  static const Color backgroundColor = Color(0xFFEEEEEE);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0x91000000);
}

class AppTextStyle {
  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 12.0,
    fontFamily: 'Arial',
  );
}

class CustomDecorations {
  static const BoxDecoration commonBoxDecoration = BoxDecoration(
    color: AppColors.backgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  );

  static const BoxDecoration decorationWithImage = BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/bg_imagebtn.png'), // Replace with your image path
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  );

}


class AppTextStyles {
  static const TextStyle commonTextStyleOne = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
  );

  static const TextStyle commonTextStyleTwo = TextStyle(
    fontSize: 12,
    fontFamily: 'Arial',
  );

  static const TextStyle commonTextStyleThree = TextStyle(
    fontSize: 12,
    color: AppColors.greyColor,
    fontFamily: 'Arial',
  );

  static const TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 24,
    color: AppColors.textColor,
  );

  static const TextStyle drListStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 18,
    color: AppColors.primaryColor,
  );

  static const TextStyle seeAllStyle = TextStyle(
    fontFamily: 'Arial',
    fontSize: 18,
    color: AppColors.primaryColor,
  );
}

class AppStrings {
  static const String completedTitle = 'Completed';
  static const String orderReceived = 'Order already received\nby the Branch \n\nGo Print the DR';
  static const String drListTitle = 'DR List';
  static const String seeAllText = 'See all';
}

class AppData {
  static const List<Map<String, String>>  dataListDR = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '7:09 PM'
    },


  ];

  static const List<Map<String, String>>  dataListDRtwo = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '7:09 PM'
    },
    {
      'drID': 'QEJ7J8F0KH4',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },

  ];

  static const List<Map<String, String>>  dataListDRthree = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '7:09 PM'
    },
    {
      'drID': 'QEJ7J8F0KH4',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },

  ];

  static const List<Map<String, String>>  dataListDRfour = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '7:09 PM'
    },
    {
      'drID': 'QEJ7J8F0KH4',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },

  ];

  static const List<Map<String, String>>  dataListDRfive = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '7:09 PM'
    },
    {
      'drID': 'QEJ7J8F0KH4',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '12123123090909',
      'date': '09-12-2021',
      'time': '0999'
    },

  ];
}


