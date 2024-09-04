import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerContainer extends StatefulWidget {
  @override
  _BarcodeScannerContainerState createState() => _BarcodeScannerContainerState();
}

class _BarcodeScannerContainerState extends State<BarcodeScannerContainer> {
  String _barcode = '';

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Stack(
            children: [
              MobileScanner(
                fit: BoxFit.cover,
                onDetect: (barcode, args) {
                  if (barcode.rawValue != null) {
                    setState(() {
                      _barcode = barcode.rawValue!;
                    });
                  }
                },
              ),
              if (_barcode.isNotEmpty)
                //result here

                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    'Scanned Barcode: $_barcode',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
            ],
          ),
        );
  }
}
