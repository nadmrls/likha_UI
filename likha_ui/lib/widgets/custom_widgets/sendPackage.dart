import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class Sendpackage extends StatelessWidget {
  final List<Map<String, String>>  senderInfo;
  final List<Map<String, String>> recipientInfo;


  const Sendpackage({super.key, 
  required this.senderInfo, 
  required this.recipientInfo});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.9,
            padding: const EdgeInsets.only(top: 15.0, left: 15, right: 10, bottom: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.whiteColor,
              border: Border.all(
                color: AppColors.greyColor, // Border color
                width: 1.0, // Border thickness
              ),
            ),
            child:  Column(
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
                  senderInfo[0]['branch']!,
                  style: AppTextStyles.textStyleHeader,
                ),
                SizedBox(height: 10),
                Text(
                  senderInfo[0]['branch_address']!,
                  style: AppTextStyles.commonTextStyle,
                ),
                Text(
                  senderInfo[0]['contact_no']!,
                  style: AppTextStyles.commonTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
              width: screenWidth * 0.9,
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
                    child:  Text(
                      recipientInfo[0]['branch']!,
                      style: AppTextStyles.commonTextStyle,
                    ),
                  ),
                  const SizedBox(height: 10),
                   Text(
                    recipientInfo[0]['branch_address']!,
                    style: AppTextStyles.commonTextStyle,
                  ),
                   Text(
                    recipientInfo[0]['contact_no']!,
                    style: AppTextStyles.commonTextStyle,
                  ),
                  const Divider(
                    color: AppColors.greyColor,
                    thickness: 1,
                  ),
                   Text(
                    '${'No. of Units: '} ${recipientInfo[0]['no_units']!}',
                    style: AppTextStyles.commonTextStyle,
                  ),
                   Text(
                    '${'Months: '} ${recipientInfo[0]['no_months']!}',
                    style: AppTextStyles.commonTextStyle,
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}