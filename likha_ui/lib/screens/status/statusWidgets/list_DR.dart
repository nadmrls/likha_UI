import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/deliveryStatusEsign.dart';
import 'package:likhaui/utils/values/constants.dart'
;
class DRList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DRList({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: screenHeight * 0.6,
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(AppData.dataListDR.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Deliverystatusesign(dr_id: AppData.dataListDR[index]['drID']!, barcode_data: 'Data of barcode',)),
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
                        AppData.dataListDR[index]['drID']!,
                        style: AppTextStyles.commonTextStyleOne,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppData.dataListDR[index]['address']!,
                        style: AppTextStyles.commonTextStyleTwo,
                      ),
                      Text(
                        AppData.dataListDR[index]['number']!,
                        style: AppTextStyles.commonTextStyleTwo,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppData.dataListDR[index]['date']!,
                        style: AppTextStyles.commonTextStyleThree,
                      ),
                      Text(
                        AppData.dataListDR[index]['time']!,
                        style: AppTextStyles.commonTextStyleThree,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
