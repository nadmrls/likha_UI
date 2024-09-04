import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:sample_ui/utils/print_DR_constants.dart';
import 'package:sample_ui/widgets/print_Dr_widgets.dart';



class PrintDR extends StatefulWidget {
  final Uint8List eSignature;
  const PrintDR({super.key, required this.eSignature});


  @override
  State<PrintDR> createState() => _PrintDRState();
}

class _PrintDRState extends State<PrintDR> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppBarSection(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const LogoSection(),
                      SenderSection(eSignature: widget.eSignature,),
                      const SizedBox(height: 20),
                      const ButtonRow(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.2, bottom: 10),
                        child: const DoneButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
