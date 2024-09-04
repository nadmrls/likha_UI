import 'package:flutter/material.dart';
import 'package:sample_ui/receive_item/screen/delivery_details.dart';
import 'package:sample_ui/receive_item/screen/scan_barcode.dart';
import 'package:sample_ui/receive_item/widgets/scanner.dart';
import 'package:sample_ui/screens/completed_DR_screen.dart';
import 'package:sample_ui/screens/view_DR_screen.dart';

import 'create_dr/screens/dr_list.dart';
import 'create_dr/screens/dr_preview_screen.dart';
import 'create_dr/screens/view_createdr_screen.dart';
import 'screens/print_DR_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.white,
      ),
      // home: const CompleteDRWidget(),
      // home: const PrintDR(),
      // home: const ViewDR(),
      // home: const MainDrScreen(),
      // home: const DrStatistics(),
      // home: const DrPreviewScreen(),
      // home: const DrList(),
      // home: const ViewCreateDR(),
      // home: BarcodeScanner(),
      // home: BarcodeScannerContainer(),
      home: DeliveryDetails()

    );
  }
}


