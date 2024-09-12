import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:likhaui/widgets/bottom_button.dart';
import 'package:likhaui/widgets/custom_widgets/deliveryreceipt_esign.dart';
import 'package:likhaui/widgets/dialogs/done_diolog.dart';
import 'package:likhaui/widgets/top_navbar.dart';
import 'package:likhaui/utils/values/constants.dart';

class Deliveryreceipt extends StatelessWidget {
  final Uint8List eSignature;

  const Deliveryreceipt({super.key, required this.eSignature});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomButton(
        buttontxt: 'Done',
        onButtonPressed: () {
          showMyDialog(context, 'Order Received!');
        },
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TopNavbar(
                      centerText: 'Delivery Details', rightButton: false)),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    DeliveryreceiptEsign(
                      eSignature: eSignature,
                      border: 0,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('This DR will send back to the sender.'),
                  ],
                ),
              ))
            ],
          )
        ],
      )),
    );
  }
}
