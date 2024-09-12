import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/statusWidgets/barcodeEsign.dart';
import 'package:likhaui/widgets/custom_widgets/deliveryStatus.dart';
import 'package:likhaui/widgets/custom_widgets/sendPackage.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/top_navbar.dart';

class Deliverystatusesign extends StatefulWidget {
  final String dr_id;
  final String contact;

  const Deliverystatusesign(
      {super.key, required this.dr_id, required this.contact});

  @override
  State<Deliverystatusesign> createState() => _DeliverystatusesignState();
}

class _DeliverystatusesignState extends State<Deliverystatusesign> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopNavbar(centerText: widget.dr_id, rightButton: false),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            DeliveryStatusWidget(
                              screenWidth: screenWidth,
                              contact: widget.contact,
                              // contact: widget.dr_id,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 40),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Send Package',
                                style: AppTextStyles.textStyleSendPackage,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Sendpackage(
                              isEditing: false,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  AppStrings.packages,
                                  style: AppTextStyles.greenTextStyle,
                                ),
                              ),
                            ),
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
                            const SizedBox(
                              height: 15,
                            ),
                            Barcodeesign(
                              show_savebtn: true,
                              show_esign: true,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
