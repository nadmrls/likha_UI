import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/provider/barcode_provider.dart';
import 'package:likhaui/utils/shared/provider/delivery_listProvider.dart';
import 'package:provider/provider.dart';
import 'package:likhaui/screens/status/deliveryStatusEsign.dart';
import 'package:likhaui/utils/values/constants.dart';

class DRList extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const DRList({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<DRList> createState() => _DRListState();
}

class _DRListState extends State<DRList> {
  @override
  Widget build(BuildContext context) {
    final drlist = Provider.of<DeliveryProvider>(context).deliveryList;
    final barcode = Provider.of<BarcodeProvider>(context);

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(drlist.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  barcode.changeBarcode(
                    drlist[index].drID,
                  );
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Deliverystatusesign(
                      dr_id: drlist[index].drID,
                      contact: drlist[index].number,
                    ),
                  ),
                );
              },
              child: Container(
                width: widget.screenWidth * 0.9,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drlist[index].drID,
                      style: AppTextStyles.commonTextStyleOne,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      drlist[index].address,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    Text(
                      drlist[index].number,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      drlist[index].date,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                    Text(
                      drlist[index].time,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
