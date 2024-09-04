import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color textColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color lightGreyColor = Color(0xFFEEEEEE); // Equivalent to Colors.grey[200]
  static const Color backButtonColor = Color(0xFFE0E0E0);
  static const Color buttonTextColor = Colors.green;
  static const Color backgroundColor = Color(0xFFEEEEEE);
}

class AppTextStyles {
  static const TextStyle TextStyleOne = TextStyle(
    color: AppColors.textColor,
    fontSize: 11.0,
    fontFamily: 'Arial',
  );
  static const TextStyle TextStyleTwo = TextStyle(
    color: AppColors.textColor,
    fontSize: 11.0,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold
  );

  static const TextStyle TextStyleThree = TextStyle(
    color: AppColors.textColor,
    fontSize: 11.0,
    fontFamily: 'Arial',
    fontStyle: FontStyle.italic
  );
  static const TextStyle commonTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: 30.0,
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: Colors.black,
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
    color: Colors.grey,
    fontFamily: 'Arial',
  );
}

class AppStrings {
  static const String backButtonText = 'Back';
  static const String drListBTNone = 'Select DR/s to move';
  static const String drListBTNtwo = 'Move as Validated';
  static const String printButtonText = 'PRINT';
  static const String pngButtonText = 'PNG';
  static const String wordButtonText = 'WORD';
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
    // color: Colors.red,
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

