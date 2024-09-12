// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/models/delivery_detailsModel.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryDetailsProvider with ChangeNotifier {
  List<DeliveryDetailsSendPackage> _deliveryListDetails =
      AppData.del_details.map((details) {
    return DeliveryDetailsSendPackage(
        branch_sender: details['branch_sender']!,
        branch_address: details['branch_address']!,
        contact_sender: details['contact_sender']!,
        city_branch: details['city_branch']!,
        adress_recipient: details['adress_recipient']!,
        contact_recipient: details['contact_recipient']!,
        units: details['units']!,
        months: details['months']!);
  }).toList();

  List<DeliveryDetailsSendPackage> get deliveryListDetails =>
      _deliveryListDetails;

  void addDelivery(DeliveryDetailsSendPackage details) {
    _deliveryListDetails.add(details);
    notifyListeners();
  }

  void updateDelivery(int index, DeliveryDetailsSendPackage newDelivery) {
    _deliveryListDetails[index] = newDelivery;
    notifyListeners();
  }

  void removeDelivery(int index) {
    _deliveryListDetails.removeAt(index);
    notifyListeners();
  }
}
