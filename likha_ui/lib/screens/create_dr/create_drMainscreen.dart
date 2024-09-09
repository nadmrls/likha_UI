import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/create_drWidgets/filterBtns.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/top_navbar.dart';

class Viewdrlist extends StatefulWidget {
  const Viewdrlist({super.key});

  @override
  State<Viewdrlist> createState() => _ViewdrlistState();
}

class _ViewdrlistState extends State<Viewdrlist> {
  bool _showIcons = false;
  bool _showIconsTwo = false;
  bool isTextButtonEnabled = true;

  void _toggleIconsVisibility() {
    setState(() {
      _showIcons = !_showIcons;
    });
  }

  void _toggleIconsVisibilityTwo() {
    setState(() {
      _showIconsTwo = !_showIconsTwo;
      isTextButtonEnabled = !isTextButtonEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: !_showIcons ? buttons() : null,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopNavbar(
                  centerText: 'DR List',
                  rightButton: true,
                  onButtonPressed: () {
                    if (isTextButtonEnabled) {
                      _toggleIconsVisibility();
                    }
                  },
                ),
                SizedBox(height: 10),

                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                          child: SingleChildScrollView(
                            child: ButtonAndContainers(
                              showIcons: _showIcons,
                              showIconsTwo: _showIconsTwo,
                            ),
                          ),
                        ),],
                      ),
                    ))
              ],
            ),
          ]
        ),
      ),
    );
  }

  Container buttons() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: _toggleIconsVisibilityTwo,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primaryColor,
                textStyle: const TextStyle(
                  // fontSize: 16,
                ),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                AppStrings.btnone_DRList,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // showAlertMessage(context, "message");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                textStyle: const TextStyle(
                  // fontSize: 16,
                ),
                side: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                AppStrings.btntwo_DRList,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
