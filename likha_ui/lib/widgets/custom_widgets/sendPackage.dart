import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:likhaui/utils/shared/models/delivery_detailsModel.dart';
import 'package:likhaui/utils/shared/provider/delivery_detailsProvider.dart';
import 'package:likhaui/utils/values/constants.dart';

class Sendpackage extends StatefulWidget {
  final bool isEditing;

  const Sendpackage({
    super.key,
    required this.isEditing,
  });

  @override
  _SendpackageState createState() => _SendpackageState();
}

class _SendpackageState extends State<Sendpackage> {
  // Controllers for editing the text
  late TextEditingController senderBranchController;
  late TextEditingController senderAddressController;
  late TextEditingController senderContactController;

  late TextEditingController recipientBranchController;
  late TextEditingController recipientAddressController;
  late TextEditingController recipientContactController;
  late TextEditingController noUnitsController;
  late TextEditingController noMonthsController;

  @override
  void initState() {
    super.initState();

    // Initialize controllers with default values from the provider
    final deliveryDetails =
        context.read<DeliveryDetailsProvider>().deliveryListDetails[0];

    senderBranchController =
        TextEditingController(text: deliveryDetails.branch_sender);
    senderAddressController =
        TextEditingController(text: deliveryDetails.branch_address);
    senderContactController =
        TextEditingController(text: deliveryDetails.contact_sender);

    recipientBranchController =
        TextEditingController(text: deliveryDetails.city_branch);
    recipientAddressController =
        TextEditingController(text: deliveryDetails.adress_recipient);
    recipientContactController =
        TextEditingController(text: deliveryDetails.contact_recipient);
    noUnitsController = TextEditingController(text: deliveryDetails.units);
    noMonthsController = TextEditingController(text: deliveryDetails.months);
  }

  @override
  void dispose() {
    senderBranchController.dispose();
    senderAddressController.dispose();
    senderContactController.dispose();

    recipientBranchController.dispose();
    recipientAddressController.dispose();
    recipientContactController.dispose();
    noUnitsController.dispose();
    noMonthsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deliveryDetailsProvider =
        Provider.of<DeliveryDetailsProvider>(context);
    final deliveryDetails = deliveryDetailsProvider.deliveryListDetails;

    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Sender Info
          Container(
            width: screenWidth * 0.9,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.whiteColor,
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.0,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.senderTitle,
                  style: AppTextStyles.textStyleHeader,
                ),
                Divider(color: AppColors.greyColor, thickness: 1),
                widget.isEditing
                    ? TextField(
                        controller: senderBranchController,
                        style: AppTextStyles.textStyleHeader,
                        decoration: AppTextStyles.textFieldDecor,
                      )
                    : Text(senderBranchController.text,
                        style: AppTextStyles.textStyleHeader),
                SizedBox(height: 10),
                widget.isEditing
                    ? TextField(
                        controller: senderAddressController,
                        style: AppTextStyles.commonTextStyle,
                        decoration: AppTextStyles.textFieldDecor,
                      )
                    : Text(senderAddressController.text,
                        style: AppTextStyles.commonTextStyle),
                widget.isEditing
                    ? TextField(
                        controller: senderContactController,
                        style: AppTextStyles.commonTextStyle,
                        decoration: AppTextStyles.textFieldDecor,
                      )
                    : Text(senderContactController.text,
                        style: AppTextStyles.commonTextStyle),
              ],
            ),
          ),
          SizedBox(height: 15),
          // Recipient Info
          Container(
            width: screenWidth * 0.9,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.whiteColor,
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.0,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(AppStrings.recipientTitle,
                    style: AppTextStyles.textStyleHeader),
                Divider(color: AppColors.greyColor, thickness: 1),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.lightGreyColor,
                  ),
                  child: widget.isEditing
                      ? TextField(
                          controller: recipientBranchController,
                          style: AppTextStyles.commonTextStyle,
                          decoration: AppTextStyles.textFieldDecor,
                        )
                      : Text(recipientBranchController.text,
                          style: AppTextStyles.commonTextStyle),
                ),
                SizedBox(height: 10),
                widget.isEditing
                    ? TextField(
                        controller: recipientAddressController,
                        style: AppTextStyles.commonTextStyle,
                        decoration: AppTextStyles.textFieldDecor,
                      )
                    : Text(recipientAddressController.text,
                        style: AppTextStyles.commonTextStyle),
                widget.isEditing
                    ? TextField(
                        controller: recipientContactController,
                        style: AppTextStyles.commonTextStyle,
                        decoration: AppTextStyles.textFieldDecor,
                      )
                    : Text(recipientContactController.text,
                        style: AppTextStyles.commonTextStyle),
                Divider(color: AppColors.greyColor, thickness: 1),
                widget.isEditing
                    ? Row(
                        children: [
                          Text('No. of Units: ',
                              style: AppTextStyles.commonTextStyle),
                          Expanded(
                            child: TextField(
                              controller: noUnitsController,
                              style: AppTextStyles.commonTextStyle,
                              decoration: AppTextStyles.textFieldDecor,
                            ),
                          ),
                        ],
                      )
                    : Text('No. of Units: ${noUnitsController.text}',
                        style: AppTextStyles.commonTextStyle),
                SizedBox(height: 10),
                widget.isEditing
                    ? Row(
                        children: [
                          Text('Months: ',
                              style: AppTextStyles.commonTextStyle),
                          Expanded(
                            child: TextField(
                              controller: noMonthsController,
                              style: AppTextStyles.commonTextStyle,
                              decoration: AppTextStyles.textFieldDecor,
                            ),
                          ),
                        ],
                      )
                    : Text('Months: ${noMonthsController.text}',
                        style: AppTextStyles.commonTextStyle),
              ],
            ),
          ),
          SizedBox(height: 15),
          // Save button when editing

          // ElevatedButton(
          //   onPressed: () {
          //     // Update provider with the new details
          //     final updatedDetails = DeliveryDetailsSendPackage(
          //       branch_sender: senderBranchController.text,
          //       branch_address: senderAddressController.text,
          //       contact_sender: senderContactController.text,
          //       adress_recipient: recipientAddressController.text,
          //       contact_recipient: recipientContactController.text,
          //       units: noUnitsController.text,
          //       months: noMonthsController.text,
          //       city_branch: recipientBranchController.text,
          //     );

          //     deliveryDetailsProvider.updateDelivery(0, updatedDetails);
          //   },
          //   child: Text('Save'),
          // ),
        ],
      ),
    );
  }
}
