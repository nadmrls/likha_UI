import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:sample_ui/screens/print_DR_screen.dart';
import 'package:signature/signature.dart';
import 'package:sample_ui/utils/view_DR_constants.dart';
import 'package:flutter/services.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
            onPressed: () {
            Navigator.pop(context);
            },
            style: TextButton.styleFrom(
            backgroundColor: AppColors.lightGreyColor,
            ),
            child:  const Row(
                children: [
                Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.blackColor,
                size: 20,
                ),
            Text(
            AppStrings.backButtonText,
            style: AppTextStyles.backButtonStyle,
            ),
          ],
        ),
      );
  }
}


class DeliveryStatusWidget extends StatelessWidget {
  final double screenWidth;

  const DeliveryStatusWidget({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      padding: const EdgeInsets.only(top: 15.0, left: 15, right: 10, bottom: 15.0),
      decoration: BoxDecoration(
        color: AppColors.lightGreenColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppStrings.deliveryStatus,
                style: AppTextStyles.deliveryStatusStyle,
              ),
              Row(
                children: [
                  const Text(
                    AppStrings.contactHere,
                    style: AppTextStyles.contactHereStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Clipboard.setData(const ClipboardData(text: AppStrings.contactHere));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Contact Information Copied to Clipboard")),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primaryColor,
                      textStyle: AppTextStyles.copyButtonStyle,
                    ),
                    child: const Text(AppStrings.copyButtonText),
                  ),
                ],
              ),
            ],
          ),
           SizedBox(
            width: 300,
            height: 250,
            child: OrderTracker(),
          ),
        ],
      ),
    );
  }
}

class SendPackageTitleWidget extends StatelessWidget {
  const SendPackageTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: const Padding(
        padding: EdgeInsets.only(left: 55.0),
        child: Text(
          AppStrings.sendPackage,
          style: AppTextStyles.textStyleSendPackage,
        ),
      ),
    );
  }
}

class SenderDetailsWidget extends StatelessWidget {
  final double screenWidth;

  const SenderDetailsWidget({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      padding: const EdgeInsets.only(top: 15.0, left: 15, right: 10, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor, // Border color
          width: 1.0, // Border thickness
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.senderTitle,
            style: AppTextStyles.textStyleHeader,
          ),
          Divider(
            color: AppColors.greyColor,
            thickness: 1,
          ),
          Text(
            AppStrings.branchName,
            style: AppTextStyles.textStyleHeader,
          ),
          SizedBox(height: 10),
          Text(
            AppStrings.address,
            style: AppTextStyles.commonTextStyle,
          ),
          Text(
            AppStrings.contact,
            style: AppTextStyles.commonTextStyle,
          ),
        ],
      ),
    );
  }
}

class RecipientDetailsWidget extends StatelessWidget {
  final double screenWidth;

  const RecipientDetailsWidget({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor, // Border color
          width: 1.0, // Border thickness
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.recipientTitle,
            style: AppTextStyles.textStyleHeader,
          ),
          const Divider(
            color: AppColors.greyColor,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.lightGreyColor,
            ),
            child: const Text(
              AppStrings.address,
              style: AppTextStyles.commonTextStyle,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            AppStrings.address,
            style: AppTextStyles.commonTextStyle,
          ),
          const Text(
            AppStrings.contact,
            style: AppTextStyles.commonTextStyle,
          ),
          const Divider(
            color: AppColors.greyColor,
            thickness: 1,
          ),
          const Text(
            AppStrings.noOfUnits,
            style: AppTextStyles.commonTextStyle,
          ),
          const Text(
            AppStrings.months,
            style: AppTextStyles.commonTextStyle,
          ),
        ],
      ),
    );
  }
}

class PackagesTitleWidget extends StatelessWidget {
  const PackagesTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: const Padding(
        padding: EdgeInsets.only(left: 55.0),
        child: Text(
          AppStrings.packages,
          style: AppTextStyles.greenTextStyle,
        ),
      ),
    );
  }
}

class PackageImageWidget extends StatelessWidget {
  const PackageImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 60, top: 20),
      child: Image.asset(
        'assets/images/package.png',
        width: 200,
        height: 200,
      ),
    );
  }
}

class BarcodeTitleWidget extends StatelessWidget {
  const BarcodeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: const Padding(
        padding: EdgeInsets.only(left: 55.0),
        child: Text(
          AppStrings.barcode,
          style: AppTextStyles.greenTextStyle,
        ),
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
            height: 100,
          ),
        ),
      ),
    );
  }
}

class SignatureTitleWidget extends StatelessWidget {
  const SignatureTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: const Padding(
        padding: EdgeInsets.only(left: 55.0),
        child: Text(
          AppStrings.signatureOfReceiver,
          style: AppTextStyles.greenTextStyle,
        ),
      ),
    );
  }
}

class SignatureContainer extends StatelessWidget {
  final SignatureController controller;

  const SignatureContainer({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 55.0, right: 55.0),
        child: ClipRect(
          child: Signature(
            controller: controller,
            backgroundColor: AppColors.lightGreyColor,
          ),
        ),
      ),
    );
  }
}

class ClearButton extends StatelessWidget {
  final SignatureController controller;

  const ClearButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.clear();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor, // Background color
        foregroundColor: AppColors.whiteColor, // Text color
        textStyle: const TextStyle(
          fontSize: 20, // Font size
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Button size
      ),
      child: const Text(AppStrings.clearButtonText),
    );
  }
}

class SaveButton extends StatelessWidget {
  final SignatureController controller;

  const SaveButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final signature = await controller.toPngBytes();
        if (signature != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PrintDR(eSignature: signature,)),
          );

        } else{
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Signature Required.")),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor, // Background color
        foregroundColor: AppColors.whiteColor, // Text color
        textStyle: const TextStyle(
          fontSize: 20, // Font size
        ),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), // Button size
      ),
      child: const Text(AppStrings.saveAsPrintButtonText),
    );
  }
}

class OrderTracker extends StatelessWidget {
  final List<String> stages = [
    "Order Placed",
    "Processing",
    "Shipped",
    "Out for Delivery",
    "Delivered"
  ];

  final  List<String> leftTexts = [
    "Today ",
    "Today ",
    "Today ",
    "Today ",
    "Today "
  ];

  final List<String> rightTexts = [
    "Order Placed",
    "Packed",
    "Shipped",
    "In Transit",
    "Delivered"
  ];

  final List<String> additionalRightTexts = [
    "Preparing your Order",
    "Item Packed Waiting for Delivery",
    "Item has been shipped",
    "Item is out for Delivery",
    "Item Delivered Successfully."
  ];

  final List<String> additionalLeftTexts = [
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
    "1:00 PM",
  ];

  final int currentStage = 5;

  OrderTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: stages.length,
            itemBuilder: (context, index) {
              return OrderTrackerStep(
                stage: stages[index],
                leftText: leftTexts[index],
                rightText: rightTexts[index],
                additionalRightText: additionalRightTexts[index],
                additionalLeftText: additionalLeftTexts[index],
                isActive: index <= currentStage,
                isCompleted: index < currentStage,
              );
            },
          ),
        ),
      ],
    );
  }
}

class OrderTrackerStep extends StatelessWidget {
  final String stage;
  final String leftText;
  final String rightText;
  final String additionalRightText;
  final String additionalLeftText;
  final bool isActive;
  final bool isCompleted;

  const OrderTrackerStep({
    super.key,
    required this.stage,
    required this.leftText,
    required this.rightText,
    required this.additionalRightText,
    required this.additionalLeftText,
    required this.isActive,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Expanded(
            child: Column(
              children: [
                Text(
                  leftText,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 10,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  additionalLeftText,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 8,
                    color: Colors.grey,

                  ),

                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 5,),
        Column(
          children: [
            Icon(
              isCompleted
                  ? Icons.check_circle
                  : isActive
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: isCompleted || isActive
                  ? Colors.green
                  : Colors.grey,
            ),
            if (stage != "Delivered") // Don't show the line after the last stage
              Container(
                height: 25,
                width: 2,
                color: isCompleted || isActive
                    ? Colors.green
                    : Colors.grey,
              ),
          ],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rightText,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                additionalRightText,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

