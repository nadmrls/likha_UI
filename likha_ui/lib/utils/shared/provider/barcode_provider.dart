import 'package:flutter/material.dart';

class BarcodeProvider with ChangeNotifier {
  String _barcodeValue = '';

  String get barcodeValue => _barcodeValue;

  void changeBarcode(String newText) {
    _barcodeValue = newText;
    notifyListeners();
  }
}
