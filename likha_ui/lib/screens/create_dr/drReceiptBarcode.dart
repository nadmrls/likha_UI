import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drWidgets/barcodeContainerWidget.dart';
import 'package:likhaui/screens/status/statusWidgets/rowButtons.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/bottom_button.dart';
import 'package:likhaui/widgets/dialogs/done_diolog.dart';
import 'package:likhaui/widgets/logosection.dart';
import 'package:likhaui/widgets/top_navbar.dart';

class Drreceiptbarcode extends StatelessWidget {
  const Drreceiptbarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomButton(buttontxt: 'Proceed', onButtonPressed: (){
        showMyDialog(context, "DR Successfully Added!");
      }),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TopNavbar(centerText: 'Delivery Details', rightButton: false, onButtonPressed: () {  },)),
                  SizedBox(height: 15,),
                    Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          LogoSection(),
                          Barcodecontainerwidget(invoiceInfo: AppData.invoiceBarcode,),
                          SizedBox(height: 15,),

                          Rowbuttons(onPngButtonPressed: (){}, onWordButtonPressed: (){}, onPrintButtonPressed: (){})

                          
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