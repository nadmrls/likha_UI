import 'package:flutter/material.dart';
import 'package:likhaui/screens/receive_item/deliveryDetails.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerContainer extends StatefulWidget {
  const BarcodeScannerContainer({
    super.key,
  });

  @override
  _BarcodeScannerContainerState createState() =>
      _BarcodeScannerContainerState();
}

class _BarcodeScannerContainerState extends State<BarcodeScannerContainer> {
  String _barcode = '';

  void scanBarcodeResult(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Deliverydetails(
                contact: 'test',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Stack(
        children: [
          MobileScanner(
            fit: BoxFit.cover,
            onDetect: (barcode, args) {
              if (barcode.rawValue != null && _barcode.isEmpty) {
                setState(() {
                  _barcode = barcode.rawValue!;
                });
                // Call the navigation function here once a barcode is detected
                scanBarcodeResult(context);
              } else {
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    'Scanned Barcode error: $_barcode',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
