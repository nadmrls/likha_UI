// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class DrListfilterprovider with ChangeNotifier {
  List<Map<String, dynamic>> _selectedTable = AppData.dataListDR;

  List<Map<String, dynamic>> get selectedTable => _selectedTable;

  void updateSelectedTable(int index) {
    switch (index) {
      case 0:
        _selectedTable = AppData.dataListDR;
        break;
      case 1:
        _selectedTable = AppData.dataListDRtwo;
        break;
      case 2:
        _selectedTable = AppData.dataListDRthree;
        break;
      case 3:
        _selectedTable = AppData.dataListDRfour;
        break;
      case 4:
        _selectedTable = AppData.dataListDRfive;
        break;
      default:
        _selectedTable = AppData.dataListDR;
    }
    notifyListeners(); // Notify listeners to update the UI
  }

  String _buttonText = "Move all as Validated";

  String get buttonTextValue => _buttonText;

  void changeText(String newText) {
    _buttonText = newText;
    notifyListeners();
  }

  bool _isVisible = true;

  bool get isVisible => _isVisible;

  void toggleVisibilityFalse() {
    _isVisible = false;
    notifyListeners();
  }

  void toggleVisibilityTrue() {
    _isVisible = true;
    notifyListeners();
  }
}
