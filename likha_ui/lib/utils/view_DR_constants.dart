import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color greyColor = Colors.grey;
  static const Color greyColor100 =   Color(0xFFF5F5F5);
  static const Color lightGreyColor = Color(0xFFD3D3D3);
  static const Color lightGreenColor = Color(0xFFd5e8d4);
}

class AppTextStyles {
  static const TextStyle textStyleSendPackage = TextStyle(
    fontSize: 25,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle greenTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 25,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textStyleHeader = TextStyle(
    fontFamily: 'Arial',
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle commonTextStyle = TextStyle(
    fontFamily: 'Arial',
    fontSize: 12,
  );

  static const TextStyle backButtonStyle = TextStyle(
    color: AppColors.blackColor,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle deliveryStatusStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 16,
  );

  static const TextStyle contactHereStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 16,
  );

  static const TextStyle copyButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 12,
  );

  static const TextStyle headerTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 24,
    color: AppColors.blackColor,
  );
}

class AppStrings {
  static const String drID = 'QEJ7J8F0KH3';
  static const String backButtonText = 'Back';
  static const String deliveryStatus = 'Delivery Status';
  static const String contactHere = 'Contact here';
  static const String copyButtonText = 'Copy';
  static const String sendPackage = 'Send Package';
  static const String senderTitle = 'Sender';
  static const String branchName = 'Likha ni Inay Main Branch';
  static const String address = '20 ML Quezon St.  City Subdivision, San Pablo City, Laguna ';
  static const String contact = '0909090909';
  static const String recipientTitle = 'Recipient';
  static const String noOfUnits = 'No of Units:';
  static const String months = 'Months:';
  static const String packages = 'Packages';
  static const String barcode = 'Barcode';
  static const String signatureOfReceiver = 'Signature of Receiver';
  static const String clearButtonText = 'Clear';
  static const String saveAsPrintButtonText = 'Save as/Print DR';
}
