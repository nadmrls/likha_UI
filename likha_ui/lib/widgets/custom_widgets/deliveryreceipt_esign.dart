import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryreceiptEsign extends StatefulWidget {
  final List<List<String>> orderInfo;
  final List<String>  customerInfo;
  final Uint8List eSignature;
  final double border;

  const DeliveryreceiptEsign({super.key, required this.customerInfo, required this.eSignature, required this.orderInfo, required this.border});

  @override
  State<DeliveryreceiptEsign> createState() => _DeliveryreceiptEsignState();
}

class _DeliveryreceiptEsignState extends State<DeliveryreceiptEsign> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.border),
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            AppStrings.senderTitle,
            style: AppTextStyles.titleTextStyle,
          ),
          const Text(
            AppStrings.branchNamePlaceholder,
            style: AppTextStyles.commonTextStyle,
          ),
          const Divider(
            color: AppColors.greyColor,
            thickness: 1,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(AppData.receiptTitle.length, (index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          AppData.receiptTitle[index]['title']!,
                          style: AppTextStyles.commonTextStyle,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.customerInfo[index],
                        style: AppTextStyles.commonTextStyle,
                      ),
                      SizedBox(width: screenWidth * 0.1),
                    ],
                  ),
                  const Divider(
                    color: AppColors.greyColor,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ],
              );
            }),
          ),
          const SizedBox(height: 15),
          SummarySection(orderInfo: widget.orderInfo,),
          const SizedBox(height: 10),
          MonthsUnitsSection(orderInfo: widget.orderInfo,),
          GreyBox(eSignature: widget.eSignature)
        ],
      ),
    );
  }
}

class SummarySection extends StatelessWidget {
  final List<List<String>> orderInfo;

  const SummarySection({super.key, required this.orderInfo});

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 1),
        Column(
          children: [
             Text(
              AppStrings.quantityTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[0]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              AppStrings.unitsTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[1]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              AppStrings.qtyTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[2]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              AppStrings.itemTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[3]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              AppStrings.priceTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[4]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              AppStrings.totalTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderInfo[5]
                  .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        const SizedBox(width: 1),
      ],
    );
  }
}

class MonthsUnitsSection extends StatelessWidget {
  final List<List<String>> orderInfo;
  const MonthsUnitsSection({super.key, required this.orderInfo});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.045),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text(
                    AppStrings.monthsTitle,
                    style: AppTextStyles.titleTextStyle,
                  ),
                  Column(
                    children: orderInfo[6]
                        .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                        .toList(),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text(
                    AppStrings.unitsNumTitle,
                    style: AppTextStyles.titleTextStyle,
                  ),
                  Column(
                    children: orderInfo[7]
                        .map((data) => Text(data, style: AppTextStyles.commonTextStyle))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GreyBox extends StatelessWidget {
  final Uint8List eSignature;

  const GreyBox({super.key, required this.eSignature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0, top: 20.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          width: 150,
          height: 100,
          child: Image.memory(eSignature),
        ),
      ),
    );
  }
}