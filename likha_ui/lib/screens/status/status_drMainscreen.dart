import 'package:flutter/material.dart';
import 'package:likhaui/screens/status/statusWidgets/containerDeliveryMan.dart';
import 'package:likhaui/screens/status/statusWidgets/list_DR.dart';
import 'package:likhaui/screens/status/seeAllDR.dart';
import 'package:likhaui/utils/values/constants.dart';

class StatusDrmainscreen extends StatefulWidget {
  const StatusDrmainscreen({super.key});

  @override
  State<StatusDrmainscreen> createState() => _StatusDrmainscreenState();
}

class _StatusDrmainscreenState extends State<StatusDrmainscreen> {
  
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Completed',
            style: AppTextStyles.titleStyle),
            SizedBox(height: 15,),
            OrderReceivedContainer(),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DR List',
                style: AppTextStyles.drListStyle,),
                TextButton(
                     onPressed: () {
                        // Navigate to SecondScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Seealldr()),
                        );
                      },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.buttonTextColor,
                      textStyle: AppTextStyles.seeAllStyle,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppStrings.seeAllText,
                          style: AppTextStyles.seeAllStyle,
                        ),
                        SizedBox(width: 2),
                        Icon(Icons.arrow_forward_ios_rounded, color: AppColors.primaryColor,), 
                      ],
                    ),
                  )
            ],),
            SizedBox(height: 15,),
            DRList(screenHeight: screenHeight, screenWidth: screenWidth)
      
        
        ],
        ),
      ),
    );
  }
}