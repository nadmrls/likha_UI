// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/models/delivery_listModel.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryProvider with ChangeNotifier {
  List<DeliveryData> _deliveryList = AppData.dataListDR.map((delivery) {
    return DeliveryData(
      drID: delivery['drID']!,
      address: delivery['address']!,
      number: delivery['number']!,
      date: delivery['date']!,
      time: delivery['time']!,
    );
  }).toList();

  List<DeliveryData> get deliveryList => _deliveryList;
}
