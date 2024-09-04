import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:sample_ui/create_dr/widgets/view_createdr_widgets.dart';
import 'package:sample_ui/create_dr/utils/view_createdr_constants.dart';

class ViewCreateDR extends StatefulWidget {
  const ViewCreateDR({super.key});

  @override
  State<ViewCreateDR> createState() => _ViewDRListState();
}

class _ViewDRListState extends State<ViewCreateDR> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.whiteColor,
              padding: const EdgeInsets.all(15.0),
              child: const Row(
                children: [
                  BackButtonWidget(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greyColor100,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      DeliveryStatusWidget(screenWidth: screenWidth),
                      const SizedBox(height: 20),
                      const SendPackageTitleWidget(),
                      const SizedBox(height: 20),
                      SenderDetailsWidget(screenWidth: screenWidth),
                      const SizedBox(height: 20),
                      RecipientDetailsWidget(screenWidth: screenWidth),
                      const SizedBox(height: 20),
                      const PackagesTitleWidget(),
                      const PackageImageWidget(),
                      const SizedBox(height: 20),
                      const BarcodeTitleWidget(),
                      const SizedBox(height: 20),
                      const BarcodeWidgetContainer(),
                      const SizedBox(height: 20),
                      // SignatureTitleWidget(),
                      // SizedBox(height: 20),
                      // SignatureContainer(controller: _controller),
                      // const SizedBox(height: 20),
                      // ClearButton(controller: _controller),
                      // const SizedBox(height: 20),
                      // SaveButton(controller: _controller),
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
