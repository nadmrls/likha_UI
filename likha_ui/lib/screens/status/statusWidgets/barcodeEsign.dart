import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/printDR.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:signature/signature.dart';

import '../../../widgets/bottom_button.dart';


class Barcodeesign extends StatefulWidget {
  final String barcode_data;
  final bool show_savebtn;
  final bool show_esign;


  const Barcodeesign({super.key, 
  required this.barcode_data, 
  required this.show_savebtn, required this.show_esign, 
  });

  @override
  State<Barcodeesign> createState() => _BarcodeesignState();
}

class _BarcodeesignState extends State<Barcodeesign> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                AppStrings.barcode,
                style: AppTextStyles.greenTextStyle,
              ),
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            width: 450,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: BarcodeWidget(
                  drawText: false,
                  barcode: Barcode.code128(),
                  data: widget.barcode_data,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            ),
          ),

          if(widget.show_esign)
            SizedBox(height: 15,),
          if(widget.show_esign)

          Container(
            alignment: Alignment.bottomLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                AppStrings.signatureOfReceiver,
                style: AppTextStyles.greenTextStyle,
              ),
            ),
          ),
       
          if(widget.show_esign)
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: ClipRect(
                child: Signature(
                  controller: _controller,
                  backgroundColor: AppColors.lightGreyColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          if(widget.show_esign)
          ElevatedButton(
            onPressed: () {
              _controller.clear();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor, // Background color
              foregroundColor: Color.fromARGB(255, 255, 255, 255), // Text color
              textStyle: const TextStyle(
                fontSize: 20, // Font size
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Button size
            ),
            child: const Text(AppStrings.clearButtonText),
          ),

          SizedBox(height: 15,),
          if(widget.show_savebtn)
            BottomButton(buttontxt: 'Save as/Print DR', onButtonPressed: () async {
              final signature = await _controller.toPngBytes();
              if (signature != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Printdr(eSignature: signature,)),
                );

              } else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Signature Required.")),
                );
              }
            },)
          //  ElevatedButton(
          //   onPressed: () async {
          //     final signature = await _controller.toPngBytes();
          //     if (signature != null) {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => Printdr(eSignature: signature,)),
          //       );
          //
          //     } else{
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(content: Text("Signature Required.")),
          //       );
          //     }
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: AppColors.primaryColor, // Background color
          //     foregroundColor: AppColors.whiteColor, // Text color
          //     textStyle: const TextStyle(
          //       fontSize: 20, // Font size
          //     ),
          //     padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), // Button size
          //   ),
          //   child: const Text(AppStrings.saveAsPrintButtonText),
          // ),

          
        ],
      ),
    );
  }
}