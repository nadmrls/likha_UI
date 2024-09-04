import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/create_dr/utils/dr_preview_constants.dart';
import 'package:signature/signature.dart';

import '../../create_dr/widgets/view_createdr_widgets.dart';
import 'package:sample_ui/dialog/alert_dialog.dart';

class DeliveryDetails extends StatelessWidget {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );
   DeliveryDetails({super.key});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
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
                      'Delivery Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Arial',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showAlertMessage(context, 'Signature addres', icon: Icon(Icons.edit, color:Colors.white,));
                      },
                      child: Text(
                        'Option',
                        style: TextStyle(
                          color: Colors.green[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
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
                              const SizedBox(height: 100),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 20),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 1
                ),
                color: AppColors.primaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(50)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Arial',
                      ),),
                      Text('P 300',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Arial',
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20, top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                        
                      ),
                    child: Text("Order Received",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  )
                ],
                
              ),
            )
          ),
        ],
      ),
    );
  }
}
