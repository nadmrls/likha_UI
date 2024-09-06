import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/statusWidgets/barcodeEsign.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/custom_widgets/deliveryStatus.dart';
import 'package:likhaui/widgets/custom_widgets/sendPackage.dart';
import 'package:likhaui/widgets/top_navbar.dart';

class DeliverystatusCreateDR extends StatelessWidget {
  final String dr_id;
  const DeliverystatusCreateDR({super.key, required this.dr_id});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TopNavbar(centerText: dr_id, rightButton: true, onButtonPressed: () {},),
              SizedBox(height: 15,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DeliveryStatusWidget(screenWidth: screenWidth,),
                      SizedBox(height: 15,),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Send Package',
                          style: AppTextStyles.textStyleSendPackage,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Sendpackage(senderInfo: AppData.sender, recipientInfo:AppData.recipient,),
                      SizedBox(height: 15,),

                      Container(
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.only(left: 60, top: 20),
                              child: Expanded(
                                child: Image.asset(
                                  'assets/images/package.png',
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ),
                      SizedBox(height: 15,),
                      Barcodeesign(barcode_data: 'barcode_data', show_savebtn: false, show_esign: false,),


                    ],
                  ),
                )
              )
            ],
            )
          ],
        )),
    );
  }
}