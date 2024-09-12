import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5CA47A);
  static const Color alertDialogColor = Color.fromARGB(255, 173, 209, 189);
  static const Color textColor = Colors.black;
  static const Color buttonTextColor = Colors.green;
  static const Color backgroundColor = Color(0xFFEEEEEE);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color greyColor100 = Color(0xFFF5F5F5);
  static const Color lightGreyColor = Color(0xFFD3D3D3);
  static const Color lightGreenColor = Color(0xFFd5e8d4);
}

class AppStrings {
  static const String completedTitle = 'Completed';
  static const String orderReceived =
      'Order already received\nby the Branch \n\nGo Print the DR';
  static const String seeAllText = 'See all';
  static const String backButtonText = 'Back';
  static const String deliveryStatus = 'Delivery Status';
  static const String contactHere = 'Contact here';
  static const String copyButtonText = 'Copy';
  static const String sendPackage = 'Send Package';
  static const String senderTitle = 'Sender';
  static const String recipientTitle = 'Recipient';
  static const String packages = 'Packages';
  static const String barcode = 'Barcode';
  static const String signatureOfReceiver = 'Signature of Receiver';
  static const String clearButtonText = 'Clear';
  static const String saveAsPrintButtonText = 'Save as/Print DR';
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
  static const String barcodetext = 'Scan Barcode';
  static const String scaninstruction = 'Place the barcode inside the frame';
  static const String btnone_DRList = 'Select DR/s to move';
  static const String btntwo_DRList = 'Move all as Validated';

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
  static const List<Map<String, String>> dataListDR = [
    {
      'drID': 'QEJ7J8F0KH3',
      'address': '20 ML Quezon St. City Subdivision, San Pablo City, Laguna ',
      'number': '09096655351',
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

  static const List<Map<String, String>> dataListDRtwo = [
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

  static const List<Map<String, String>> dataListDRthree = [
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

  static const List<Map<String, String>> dataListDRfour = [
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

  static const List<Map<String, String>> dataListDRfive = [
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

  static const List<Map<String, String>> invoiceBarcode = [
    {
      'vendor_name': 'Likha ni Inay, Inc.',
      'branch': 'San Pablo Branch',
      'inv_no': 'XXXXX',
      'department_name': 'LIKHA NI INAY, INC. MAIN',
      'ASN': 'XXXXXXXXXXXXX',
      'RDD': 'Jun 28, 2024 09:00am',
    }
  ];

  static const List<Map<String, String>> sender = [
    {
      'branch': 'Likha ni Inay Main Branch',
      'branch_address':
          '20 ML Quezon St.  City Subdivision, San Pablo City, Laguna ',
      'contact_no': '0900909099090'
    }
  ];

  static const List<Map<String, String>> recipient = [
    {
      'branch': 'Likha ni Inay Main Branch',
      'branch_address':
          '20 ML Quezon St.  City Subdivision, San Pablo City, Laguna ',
      'contact_no': '0900909099090',
      'no_units': '4',
      'no_months': '7'
    }
  ];

  static const List<Map<String, String>> receiptTitle = [
    {'title': 'Customer Name:'},
    {'title': 'Address:'},
    {'title': 'Contact Person'},
    {'title': 'Contact Number'},
    {'title': 'Contact Delivery Date:'},
    {'title': 'Delivery Number:'},
  ];

  static const List<Map<String, String>> customerInfo = [
    {
      'customer_name': 'Customer Name:',
      'address': 'Address:',
      'contact_person': 'Contact Person',
      'contact_number': 'Contact Number',
      'delivery_date': 'Delivery Date:',
      'delivery_number': 'Delivery Number:',
    },
    // Add more customers here as needed
  ];

  // static const List<String> customerInfo = [
  //   'CARD Bank, Inc. Mogpog',
  //   'persons address',
  //   'person name',
  //   '09123912309',
  //   '08202001',
  //   '09290'
  // ];

  static const List<List<String>> orderInfo = [
    [
      'One',
      'two',
      'three',
    ],
    [
      'two',
      'two',
      'three',
    ],
    [
      '3',
      'two',
      'three',
    ],
    [
      'O4',
      'two',
      'three',
    ],
    [
      'O5',
      'two',
      'three',
    ],
    [
      'O6',
      'two',
      'three',
    ],
    [
      'O7',
      'two',
      'three',
    ],
    [
      'O8',
      'two',
      'three',
      'five',
      'sic',
    ],
  ];

  static const List<Map<String, String>> del_details = [
    {
      "branch_sender": 'Likha ni inay main',
      'branch_address':
          '20 ML Quezon St.  City Subdivision, San Pablo City, Laguna ',
      'contact_sender': '09xxxxxxxxx',
      'city_branch': 'San Pablo City',
      'adress_recipient':
          '20 ML Quezon St.  City Subdivision, San Pablo City, Laguna ',
      'contact_recipient': '09xxxxxxxxx',
      'units': '5',
      'months': '6'
    }
  ];

  static const List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
}

class AppTextStyles {
  static const TextStyle allDRstyletitle =
      TextStyle(fontSize: 15, color: Colors.black87);

  static const TextStyle allDRstylevalue = TextStyle(
      fontFamily: 'Arial',
      fontSize: 25,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.bold);

  static const TextStyle packageTitle = TextStyle(
      fontFamily: 'Arial',
      fontSize: 18,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.bold);

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
    fontSize: 20,
    color: AppColors.textColor,
  );

  static const TextStyle drListStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 15,
    color: AppColors.primaryColor,
  );

  static const TextStyle seeAllStyle = TextStyle(
    fontFamily: 'Arial',
    fontSize: 15,
    color: AppColors.primaryColor,
  );

  static const TextStyle deliveryStatusStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 12,
  );
  static const TextStyle copyButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
    fontSize: 12,
  );

  static const TextStyle textStyleSendPackage = TextStyle(
    fontSize: 20,
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
  static const TextStyle greenTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 20,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 12.0,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );
  static const TextStyle userName = TextStyle(fontSize: 12, color: Colors.grey);

  static const TextStyle fullName =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  static const TextStyle scanTitle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Arial');

  static const TextStyle TextStyleOne = TextStyle(
    color: AppColors.textColor,
    fontSize: 11.0,
    fontFamily: 'Arial',
  );
  static const TextStyle TextStyleTwo = TextStyle(
      color: AppColors.textColor,
      fontSize: 11.0,
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold);
  static const TextStyle TextStyleThree = TextStyle(
      color: AppColors.textColor,
      fontSize: 11.0,
      fontFamily: 'Arial',
      fontStyle: FontStyle.italic);
  static const TextStyle btnStartDelivery = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle btnStartDeliveryText = TextStyle(
    fontSize: 11.0,
    color: Colors.white,
  );

  static const InputDecoration textFieldDecor = InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(vertical: 3.5),
      isDense: true);
}

class CustomDecorations {
  static const BoxDecoration commonBoxDecoration = BoxDecoration(
    color: AppColors.backgroundColor,
    // color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  );

  static const BoxDecoration decorationWithImage = BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/bg_imagebtn.png'),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  );
}
