import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeWidgetContainer extends StatelessWidget {
  final String barcode;
  const BarcodeWidgetContainer({super.key, required this.barcode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: BarcodeWidget(
            drawText: false,
            barcode: Barcode.code128(),
            data: barcode,
            width: double.infinity,
            height: 80,
          ),
        ),
      ),
    );
  }
}