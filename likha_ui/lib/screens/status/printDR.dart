import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:likhaui/widgets/custom_widgets/deliveryreceipt_esign.dart';
import 'package:likhaui/widgets/rowButtons.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/bottom_button.dart';
import 'package:likhaui/widgets/logosection.dart';
import 'package:likhaui/widgets/top_navbar.dart';
import 'package:likhaui/widgets/dialogs/done_diolog.dart';

class Printdr extends StatelessWidget {
  final Uint8List eSignature;

  const Printdr({super.key, required this.eSignature});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopNavbar(centerText: 'DR', rightButton: false, onButtonPressed: () {  },),
                Expanded(
                  child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            LogoSection(),
                            DeliveryreceiptEsign(customerInfo: AppData.customerInfo, orderInfo: AppData.orderInfo, eSignature: eSignature, border: 20.0,),
                            SizedBox(height: 15,),
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Rowbuttons(
                                onPngButtonPressed: () { 
        
                               }, onWordButtonPressed: () { 
        
                                }, onPrintButtonPressed: () { 
        
                                 },)),
        
                            SizedBox(height: 40,),
                              Container(
                                padding: EdgeInsets.all(30),
                                width: double.infinity,
                                child: BottomButton(buttontxt: 'Done', onButtonPressed: (){
                                  showMyDialog(context, 'Delivery Done!');
                                
                                }),
                              )
        
                            
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