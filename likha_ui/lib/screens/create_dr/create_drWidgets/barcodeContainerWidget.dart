import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drWidgets/barcode.dart';
import 'package:likhaui/utils/shared/provider/deliverybarcode_receiptProvider.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:provider/provider.dart';

class Barcodecontainerwidget extends StatelessWidget {
  const Barcodecontainerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final drdata = Provider.of<DeliverybarcodeReceiptprovider>(context)
        .deliverybarcodereceipt;

    final firstItem = drdata[0]; // Access the first item in the list
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 2),
                    top: BorderSide(color: Colors.black, width: 2),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20)), // Adjust radius as needed
                ),
                width: screenWidth * 0.44,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Vendor Code/Name',
                      style: AppTextStyles.TextStyleOne,
                    ),
                    Text(
                      firstItem.vendor_name,
                      style: AppTextStyles.TextStyleTwo,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  border: Border(
                      right: BorderSide(color: Colors.black, width: 2),
                      top: BorderSide(color: Colors.black, width: 2),
                      left: BorderSide(color: Colors.black, width: 2)),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)), // Adjust radius as needed
                ),
                width: screenWidth * 0.44,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Branch',
                      style: AppTextStyles.TextStyleOne,
                    ),
                    Text(
                      firstItem.branch,
                      style: AppTextStyles.TextStyleTwo,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2), // Black border
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            width: screenWidth * 0.88,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'INVOICE NO',
                              style: AppTextStyles.TextStyleOne,
                            ))),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              firstItem.inv_no,
                              style: AppTextStyles.TextStyleTwo,
                            ))),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'DEPARTMENT CODE/NAME',
                              style: AppTextStyles.TextStyleOne,
                            ))),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(firstItem.dept_name,
                                style: AppTextStyles.TextStyleTwo))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const BarcodeWidgetContainer(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'RDD: ${firstItem.rdd}',
                            style: AppTextStyles.TextStyleThree,
                          )),
                    ),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'ASN No: ${firstItem.asn}',
                              style: AppTextStyles.TextStyleThree,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
