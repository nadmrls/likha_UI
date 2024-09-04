import 'package:flutter/material.dart';
import 'package:sample_ui/create_dr/widgets/dr_preview_widgets.dart';

class DrPreviewScreen extends StatefulWidget {
  const DrPreviewScreen({super.key});

  @override
  State<DrPreviewScreen> createState() => _DrPreviewScreenState();
}

class _DrPreviewScreenState extends State<DrPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: ProceedBTN(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            BackButtonWithText(),
            LogoSection(),
            DRwithBarcode(),
            SizedBox(height: 20,),
            ButtonRow()
          ],
        ),
      ),
    );
  }
}
