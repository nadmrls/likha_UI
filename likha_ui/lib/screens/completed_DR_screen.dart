import 'package:flutter/material.dart';
import 'package:sample_ui/utils/completed_dr_constants.dart';
import 'package:sample_ui/widgets/completed_DR_widgets.dart';
import 'package:sample_ui/widgets/bottom_navbar.dart';


class CompleteDRWidget extends StatefulWidget {
  const CompleteDRWidget({super.key});

  @override
  State<CompleteDRWidget> createState() => _DRState();
}

class _DRState extends State<CompleteDRWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.completedTitle,
                style: AppTextStyles.titleStyle,
              ),
              SizedBox(height: screenHeight * 0.04),
              const OrderReceivedContainer(),
              SizedBox(height: screenHeight * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.drListTitle,
                    style: AppTextStyles.drListStyle,
                  ),
                  SeeAllButton(),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              DRList(screenHeight: screenHeight, screenWidth: screenWidth),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(), // Use BottomNav here
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF5CA47A),
        child: const Icon(Icons.file_copy_outlined, size: 30.0,
        color: Colors.white,),
        onPressed: () {
          // Handle FloatingActionButton press
        },
      ),
    );
  }
}

