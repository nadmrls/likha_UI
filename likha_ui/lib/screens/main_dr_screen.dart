import 'package:flutter/material.dart';
import 'package:sample_ui/widgets/main_dr_screen_widgets.dart';
import 'package:sample_ui/widgets/bottom_navbar.dart';


class MainDrScreen extends StatefulWidget {
  const MainDrScreen({super.key});

  @override
  State<MainDrScreen> createState() => _MainDrScreenState();
}

class _MainDrScreenState extends State<MainDrScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xFF5CA47A),
          child: const Icon(Icons.file_copy_outlined, size: 30.0,
            color: Colors.white,),
          onPressed: () {
          },
        ),
        body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SearchLogoWidget(),
            DRList(screenHeight: screenHeight, screenWidth: screenWidth),
            ProductList(screenHeight: screenHeight, screenWidth: screenWidth)
          ],
        ),)
    );
  }
}
