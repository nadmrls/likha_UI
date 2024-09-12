// ignore_for_file: unnecessary_cast, prefer_final_fields, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/models/delivery_receiptModel.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryReceiptProviderOrder with ChangeNotifier {
  final List<List<String>> _orderInfo = AppData.orderInfo;

  List<List<String>> get orderInfo => _orderInfo;

  void updateOrderInfo(List<List<String>> newOrderInfo) {
    _orderInfo.clear();
    _orderInfo.addAll(newOrderInfo);
    notifyListeners();
  }
}

class DeliveryReceiptProviderCustomer with ChangeNotifier {
  List<CustomerInfo> _customerInfo = AppData.customerInfo.map((customer) {
    return CustomerInfo(
      customer_name: customer['customer_name']!,
      address: customer['address']!,
      contact_person: customer['contact_person']!,
      contact_no: customer['contact_number']!,
      delivery_date: customer['delivery_date']!,
      delivery_number: customer['delivery_number']!,
    );
  }).toList();

  // Getter for the list of customers
  List<CustomerInfo> get customerInfo => _customerInfo;

  // Add a new customer to the list
  void addCustomer(CustomerInfo customer) {
    _customerInfo.add(customer);
    notifyListeners();
  }

  // Update an existing customer
  void updateCustomer(int index, CustomerInfo newCustomer) {
    _customerInfo[index] = newCustomer;
    notifyListeners();
  }

  // Remove a customer
  void removeCustomer(int index) {
    _customerInfo.removeAt(index);
    notifyListeners();
  }
}
