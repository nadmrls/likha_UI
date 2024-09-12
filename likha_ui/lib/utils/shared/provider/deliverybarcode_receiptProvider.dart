// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/models/deliverbarcode_receiptModel.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliverybarcodeReceiptprovider with ChangeNotifier {
  List<DeliverbarcodeReceiptmodel> _deliveryReceiptBarcode =
      AppData.invoiceBarcode.map((barcodereceipt) {
    return DeliverbarcodeReceiptmodel(
        vendor_name: barcodereceipt['vendor_name']!,
        inv_no: barcodereceipt['inv_no']!,
        branch: barcodereceipt['branch']!,
        dept_name: barcodereceipt['department_name']!,
        asn: barcodereceipt['ASN']!,
        rdd: barcodereceipt['RDD']!);
  }).toList();

  List<DeliverbarcodeReceiptmodel> get deliverybarcodereceipt =>
      _deliveryReceiptBarcode;
}
