import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color alertDialogColor = Color.fromARGB(255, 173, 209, 189);
  static const Color textColor = Colors.black;
  static const Color buttonTextColor = Colors.green;
  static const Color backgroundColor = Color(0xFFEEEEEE);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
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
