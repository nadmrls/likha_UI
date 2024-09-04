import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:sample_ui/utils/view_DR_constants.dart';
import 'package:sample_ui/widgets/view_dr_widgets.dart';

class ViewDR extends StatefulWidget {
  const ViewDR({super.key});

  @override
  State<ViewDR> createState() => _ViewDRListState();
}

class _ViewDRListState extends State<ViewDR> {
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
                  Expanded(
                    child: Center(
                      child: Text(
                        AppStrings.drID,
                        style: AppTextStyles.headerTitleStyle,
                      ),
                    ),
                  ),
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
                      const SignatureTitleWidget(),
                      const SizedBox(height: 20),
                      SignatureContainer(controller: _controller),
                      const SizedBox(height: 20),
                      ClearButton(controller: _controller),
                      const SizedBox(height: 20),
                      SaveButton(controller: _controller),
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
