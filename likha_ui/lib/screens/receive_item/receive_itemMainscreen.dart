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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
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
                            child: Image.network(
                              'https://t3.ftcdn.net/jpg/02/19/29/52/360_F_219295256_xYAhuy7TW3o80K3tVowPQ8Qp3wq4zj9F.jpg',
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
                  padding: EdgeInsets.all(20)
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
    );
  }
}
