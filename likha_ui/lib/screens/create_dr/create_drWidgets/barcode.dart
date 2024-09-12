import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/provider/barcode_provider.dart';
import 'package:provider/provider.dart';

class BarcodeWidgetContainer extends StatelessWidget {
  const BarcodeWidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final barcode = Provider.of<BarcodeProvider>(context).barcodeValue;

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
