import 'package:flutter/material.dart';
import 'package:sample_ui/dialog/done_diolog.dart';
import 'package:sample_ui/create_dr/utils/dr_preview_constants.dart';
import 'package:barcode_widget/barcode_widget.dart';

class BackButtonWithText extends StatelessWidget {
  const BackButtonWithText({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.95,
      height: 40,
      child: Stack(
        children: [
          const Center(
            child: Text(
              'Create DR',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Arial',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey[300],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoSection extends StatefulWidget {
  const LogoSection({super.key});

  @override
  State<LogoSection> createState() => _LogoSectionState();
}

class _LogoSectionState extends State<LogoSection> {
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


class DRwithBarcode extends StatelessWidget {
  const DRwithBarcode({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)), // Adjust radius as needed
                ),
                width: screenWidth * 0.44,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vendor Code/Name',
                    style: AppTextStyles.TextStyleOne,),
                    Text('Likha ni Inay, Inc.',
                      style: AppTextStyles.TextStyleTwo,),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  border:Border(
                    right: BorderSide(color: Colors.black, width: 2),
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2)
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20)), // Adjust radius as needed
                ),
                width: screenWidth * 0.44,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Branch',
                      style: AppTextStyles.TextStyleOne,),
                    Text('San Pablo Branch',
                      style: AppTextStyles.TextStyleTwo,),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2), // Black border
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            width: screenWidth * 0.88,
            child:  Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text('INVOICE NO',
                          style: AppTextStyles.TextStyleOne,))),
                    Expanded(child: Container(
                        alignment: Alignment.centerRight,
                        child: const Text('XXXXX',
                          style: AppTextStyles.TextStyleTwo,))),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text('DEPARTMENT CODE/NAME',
                          style: AppTextStyles.TextStyleOne,))),
                    Expanded(child: Container(
                        alignment: Alignment.centerRight,
                        child: const Text('LIKHA NI INAY, INC. MAIN',
                          style: AppTextStyles.TextStyleTwo))),
                  ],
                ),
                const SizedBox(height: 20,),
                const BarcodeWidgetContainer(),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child:  Container(
                        alignment: Alignment.centerLeft,
                          child: const Text('RDD: Jun 28, 2024 09:00am',
                            style: AppTextStyles.TextStyleThree,)),
                    ),
                    Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                        child: const Text('ASN No: XXXXXXXXXXXXX',
                          style: AppTextStyles.TextStyleThree,))),
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


class BarcodeWidgetContainer extends StatelessWidget {
  const BarcodeWidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: BarcodeWidget(
            drawText: false,
            barcode: Barcode.code128(),
            data: 'Barcode Data',
            width: double.infinity,
            height: 80,
          ),
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

class ProceedBTN extends StatelessWidget {
  const ProceedBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: (){
          // showAlertMessage(context, 'Dr Created');
          showMyDialog(context, 'DR Successully Added!');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        ),
        child: const Text('Proceed'),
      ),
    );
  }
}

