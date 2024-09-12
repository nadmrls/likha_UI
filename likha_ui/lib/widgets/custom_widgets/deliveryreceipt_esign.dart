import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:likhaui/utils/shared/models/delivery_receiptModel.dart';
import 'package:provider/provider.dart';
import 'package:likhaui/utils/shared/provider/delivery_receiptProvider.dart';
import 'package:likhaui/utils/values/constants.dart';

class DeliveryreceiptEsign extends StatelessWidget {
  final Uint8List eSignature;
  final double border;

  const DeliveryreceiptEsign(
      {super.key, required this.eSignature, required this.border});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final customerList =
        Provider.of<DeliveryReceiptProviderCustomer>(context).customerInfo;

    if (customerList.isEmpty) {
      return const Center(
        child: Text('No customer information available'),
      );
    }

    final customer = customerList[0];

    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
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
          receiptCustomerData(screenWidth, 0, customer.customer_name),
          receiptCustomerData(screenWidth, 1, customer.address),
          receiptCustomerData(screenWidth, 2, customer.contact_person),
          receiptCustomerData(screenWidth, 3, customer.contact_no),
          receiptCustomerData(screenWidth, 4, customer.delivery_date),
          receiptCustomerData(screenWidth, 5, customer.delivery_number),
          const SizedBox(height: 15),
          SummarySection(),
          const SizedBox(height: 10),
          MonthsUnitsSection(),
          GreyBox(eSignature: eSignature),
        ],
      ),
    );
  }

  Column receiptCustomerData(double screenWidth, int index, String value) {
    if (index >= AppData.receiptTitle.length) {
      return Column(
        children: const [
          Text('Invalid data'),
        ],
      );
    }
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
              value,
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
  }
}

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the provider
    final orderinfo =
        Provider.of<DeliveryReceiptProviderOrder>(context).orderInfo;

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
              children: orderinfo[0]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.unitsTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderinfo[1]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.qtyTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderinfo[2]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.itemTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderinfo[3]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.priceTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderinfo[4]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
                  .toList(),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.totalTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: orderinfo[5]
                  .map((data) =>
                      Text(data, style: AppTextStyles.commonTextStyle))
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
  const MonthsUnitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final orderInfo =
        Provider.of<DeliveryReceiptProviderOrder>(context).orderInfo;

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
                        .map((data) =>
                            Text(data, style: AppTextStyles.commonTextStyle))
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
                        .map((data) =>
                            Text(data, style: AppTextStyles.commonTextStyle))
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
