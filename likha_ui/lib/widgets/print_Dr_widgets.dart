
import 'package:flutter/material.dart';
import 'package:sample_ui/utils/print_DR_constants.dart';
import 'package:sample_ui/dialog/done_diolog.dart';
import 'dart:typed_data';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
            style: TextButton.styleFrom(
              backgroundColor: AppColors.backButtonColor,
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.textColor,
                  size: 20,
                ),
                Text(
                  AppStrings.backButtonText,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                AppStrings.drTitle,
                style: AppTextStyles.appBarTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
            child: Image.asset(
              'assets/images/logomark.png',
              width: 100,
              height: 100,
            ),
          ),
          Image.asset(
            'assets/images/wordmark.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

class SenderSection extends StatelessWidget {

  final Uint8List eSignature;
  const SenderSection({super.key, required this.eSignature});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
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
            children: List.generate(AppData.dataList.length, (index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          AppData.dataList[index]['title']!,
                          style: AppTextStyles.commonTextStyle,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        AppData.dataList[index]['data']!,
                        style: AppTextStyles.commonTextStyle,
                      ),
                      SizedBox(width: screenWidth * 0.25),
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
          const SummarySection(),
          const SizedBox(height: 10),
          const MonthsUnitsSection(),
          GreyBox(eSignature: eSignature)
        ],
      ),
    );
  }
}

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 1),
        Column(
          children: [
            const Text(
              AppStrings.quantityTitle,
              style: AppTextStyles.titleTextStyle,
            ),
            const SizedBox(height: 5),
            Column(
              children: AppData.dataListValues
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
              children: AppData.dataListValues
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
              children: AppData.dataListValues
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
              children: AppData.dataListValues
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
              children: AppData.dataListValues
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
              children: AppData.dataListValues
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
  const MonthsUnitsSection({super.key});

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
                    children: AppData.dataListValues
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
                    children: AppData.dataListValues
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
class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust padding if needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Using Expanded to make the button take available space
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(
                  // fontSize: 16,
                ),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
              child: const Text(AppStrings.pngButtonText),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(
                  // fontSize: 16,
                ),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
              child: const Text(AppStrings.wordButtonText),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(
                  // fontSize: 16,
                ),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
              child: const Text(AppStrings.printButtonText),
            ),
          ),
        ],
      ),
    );
  }
}

class DoneButton extends StatelessWidget {
  void _showMyDialog(BuildContext context) {
    showMyDialog(context, 'Delivery Done!'); // Call the method from the other file
  }
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showMyDialog(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        textStyle: const TextStyle(
          fontSize: 20,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      ),
      child: const Text(AppStrings.doneButtonText),
    );
  }
}
