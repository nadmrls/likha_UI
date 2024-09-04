import 'package:flutter/material.dart';
import 'package:sample_ui/create_dr/utils/dr_preview_constants.dart';
import 'package:sample_ui/create_dr/widgets/dr_list_widgets.dart';

class DrList extends StatefulWidget {
  const DrList({super.key});

  @override
  State<DrList> createState() => _DrListState();
}

class _DrListState extends State<DrList> {
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
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'DR List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Arial',
                    ),
                  ),
                  TextButton(
                    onPressed: isTextButtonEnabled ? _toggleIconsVisibility : null,
                    child: Text(
                      'Option',
                      style: TextStyle(
                        color: isTextButtonEnabled
                            ? AppColors.primaryColor
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: screenHeight * 0.85,
              child: SingleChildScrollView(
                child: ButtonAndContainers(
                  showIcons: _showIcons,
                  showIconsTwo: _showIconsTwo,
                ),
              ),
            ),
            if (!_showIcons)
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
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
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        ),
                        child: const Text(
                          AppStrings.drListBTNone,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Additional logic can go here if needed
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
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        ),
                        child: const Text(
                          AppStrings.drListBTNtwo,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
