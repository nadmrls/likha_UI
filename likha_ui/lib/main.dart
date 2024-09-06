import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drMainscreen.dart';
import 'package:likhaui/screens/create_dr/deliveryStatus.dart';
import 'package:likhaui/screens/create_dr/drReceiptBarcode.dart';
import 'package:likhaui/screens/receive_item/barcodeScanner.dart';
import 'package:likhaui/screens/receive_item/deliveryDetails.dart';
import 'package:likhaui/screens/receive_item/deliveryReceipt.dart';
import 'package:likhaui/screens/receive_item/receive_itemMainscreen.dart';
import 'package:likhaui/screens/status/status_drMainscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StatusDrmainscreen(),
      // home: ReceiveItemmainscreen(),
      // home: BarcodeScanner(username: 'User',),
      // home: Deliverydetails(barcode: 'leenardmorales',),
      // home: Deliveryreceipt(),
      // home: CreateDrmainscreen(),
      home: Viewdrlist(),
      // home: DeliverystatusCreateDR(dr_id: '213123',),
      // home: Drreceiptbarcode(),


    );
  }
}
