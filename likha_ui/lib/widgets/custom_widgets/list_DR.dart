import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/deliveryStatusEsign.dart';
import 'package:likhaui/utils/values/constants.dart';


class DRList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<Map<String, String>> drlist;

  const DRList({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.drlist,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(drlist.length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Deliverystatusesign(dr_id: drlist[index]['drID']!, barcode_data: 'Data of barcode', contact: drlist[index]['number']!,)),
            );
          },
          child: Container(
            width: screenWidth * 0.9,
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
                  drlist[index]['drID']!,
                  style: AppTextStyles.commonTextStyleOne,
                ),
                const SizedBox(height: 8),
                Text(
                  drlist[index]['address']!,
                  style: AppTextStyles.commonTextStyleTwo,
                ),
                Text(
                  drlist[index]['number']!,
                  style: AppTextStyles.commonTextStyleTwo,
                ),
                const SizedBox(height: 8),
                Text(
                  drlist[index]['date']!,
                  style: AppTextStyles.commonTextStyleThree,
                ),
                Text(
                  drlist[index]['time']!,
                  style: AppTextStyles.commonTextStyleThree,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
