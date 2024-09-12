// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drMainscreen.dart';
import 'package:likhaui/screens/create_dr/deliveryStatus.dart';
import 'package:likhaui/screens/create_dr/drReceiptBarcode.dart';
import 'package:likhaui/screens/mainscreen_dr/mainScreenItems.dart';
import 'package:likhaui/screens/mainscreen_dr/mainScreenStatistics.dart';
import 'package:likhaui/screens/receive_item/barcodeScanner.dart';
import 'package:likhaui/screens/receive_item/deliveryDetails.dart';
import 'package:likhaui/screens/receive_item/deliveryReceipt.dart';
import 'package:likhaui/screens/receive_item/receive_itemMainscreen.dart';
import 'package:likhaui/screens/status/status_drMainscreen.dart';
import 'package:likhaui/utils/shared/models/delivery_detailsModel.dart';
import 'package:likhaui/utils/shared/provider/barcode_provider.dart';
import 'package:likhaui/utils/shared/provider/delivery_detailsProvider.dart';
import 'package:likhaui/utils/shared/provider/delivery_listProvider.dart';
import 'package:likhaui/utils/shared/provider/delivery_receiptProvider.dart';
import 'package:likhaui/utils/shared/provider/deliverybarcode_receiptProvider.dart';
import 'package:likhaui/utils/shared/provider/dr_listfilterProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeliveryProvider()),
        ChangeNotifierProvider(create: (_) => DeliveryDetailsProvider()),
        ChangeNotifierProvider(create: (_) => DeliveryReceiptProviderOrder()),
        ChangeNotifierProvider(
            create: (_) => DeliveryReceiptProviderCustomer()),
        ChangeNotifierProvider(create: (_) => DeliverybarcodeReceiptprovider()),
        ChangeNotifierProvider(create: (_) => BarcodeProvider()),
        ChangeNotifierProvider(create: (_) => DrListfilterprovider()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StatusDrmainscreen(),
      // home: BarcodeScanner(username: 'User',),
      // home: Deliverydetails(
      //   barcode: 'leenardmorales',
      //   contact: '1111',
      // ),
      // home: Deliveryreceipt(eSignature: null,),
      home: Viewdrlist(),
      // home: DeliverystatusCreateDR(
      //   dr_id: '213123',
      //   contact: '1`1`11`1`',
      // ),
      // home: Drreceiptbarcode(),
      // home: Mainscreenitems(),
      // home: DrStatistics(),
    );
  }
}
