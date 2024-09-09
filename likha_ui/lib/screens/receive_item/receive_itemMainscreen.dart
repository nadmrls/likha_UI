import 'package:flutter/material.dart';
import 'package:likhaui/screens/receive_item/receive_itemWidgets/scanner.dart';
import 'package:likhaui/utils/values/constants.dart';

class BarcodeScanner extends StatelessWidget {
  final String username;
  const BarcodeScanner({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
        
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/package.png',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(username,
                              style: AppTextStyles.userName),
        
                              Text(username,
                                style: AppTextStyles.fullName
                                )
        
                            ],
                          )
        
                        ],
                      ),
                    ),
        
                  ),
                  ElevatedButton(onPressed: (){
                    
                  },style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10)
                  ),
                      child: Icon(Icons.more_horiz_rounded,
                      color: Colors.black,),)
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  AppStrings.barcodetext,
                  style: AppTextStyles.scanTitle
                ),
              ),
        
              const SizedBox(height: 20,),
        
              Column(
                children: [
                  BarcodeScannerContainer(),
                  const SizedBox(height: 20,),
                  Icon(Icons.settings_overscan_rounded,
                  color: Colors.green[300],),
                  const SizedBox(height: 20,),
                  const Text(AppStrings.scaninstruction)
                ],
              )
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
