import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color textColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color lightGreyColor = Color(0xFFEEEEEE); // Equivalent to Colors.grey[200]
  static const Color backButtonColor = Color(0xFFE0E0E0);
}

class AppTextStyles {

  static const TextStyle commonTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 10.0,
    fontFamily: 'Arial',
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 12.0,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 24,
    color: AppColors.textColor,
  );
}

class AppStrings {
  static const String backButtonText = 'Back';
  static const String drTitle = 'DR';
  static const String senderTitle = 'Sender';
  static const String branchNamePlaceholder = 'Branch Name here';
  static const String quantityTitle = 'Quantity';
  static const String unitsTitle = 'Units';
  static const String qtyTitle = 'QTY';
  static const String itemTitle = 'Item';
  static const String priceTitle = 'Price';
  static const String totalTitle = 'Total';
  static const String monthsTitle = '# Months';
  static const String unitsNumTitle = '# Units';
  static const String doneButtonText = 'DONE';
  static const String pngButtonText = 'PNG';
  static const String wordButtonText = 'WORD';
  static const String printButtonText = 'PRINT';
}

class AppData {
  static const List<Map<String, String>> dataList = [
    {'title': 'Customer Name:', 'data': 'name'},
    {'title': 'Address:', 'data': 'add'},
    {'title': 'Contact Person', 'data': 'contact p'},
    {'title': 'Contact Number', 'data': 'contact no'},
    {'title': 'Contact Delivery Date:', 'data': 'date'},
    {'title': 'Delivery Number:', 'data': 'del. no.'},
  ];

  static const List<String> dataListValues = ['data 1', 'data 2', 'data 3'];
}
