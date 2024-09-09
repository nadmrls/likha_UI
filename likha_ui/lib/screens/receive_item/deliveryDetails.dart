import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:likhaui/screens/receive_item/deliveryReceipt.dart';
import 'package:likhaui/screens/status/statusWidgets/barcodeEsign.dart';
import 'package:likhaui/widgets/custom_widgets/deliveryStatus.dart';
import 'package:likhaui/widgets/custom_widgets/sendPackage.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:likhaui/widgets/top_navbar.dart';
import 'package:signature/signature.dart';


class Deliverydetails extends StatefulWidget {
  final String barcode;
  final String contact;
  const Deliverydetails({super.key, required this.barcode, required this.contact});

  @override
  State<Deliverydetails> createState() => _DeliverydetailsState();
}

class _DeliverydetailsState extends State<Deliverydetails> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );
   bool isEditing = false; 
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: const TopNavbar(centerText: 'Delivery Details', rightButton: false),
                ),//here
                 Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        DeliveryStatusWidget(screenWidth: screenWidth, contact: widget.contact,),
                        SizedBox(height: 15,),
                        Container(
                              margin: EdgeInsets.only(left: 30),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Send Package',
                                style: AppTextStyles.textStyleSendPackage,
                              ),
                            ),
                        SizedBox(height: 15,),
                        Sendpackage(senderInfo: AppData.del_detailssend, recipientInfo:AppData.del_detailsres,isEditing: isEditing,),
                        SizedBox(height: 15,),

                        Container(
                                width: screenWidth * 0.9,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Item List',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Column(
                                        children: List.generate(AppData.items.length, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                                            child: Text(
                                              AppData.items[index],
                                              style: TextStyle(fontSize: 12, color: Colors.black),
                                            ),
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.only(left: 40, top: 20),
                              child: Expanded(
                                child: Image.asset(
                                  'assets/images/package.png',
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Barcodeesign(barcode_data: widget.barcode, show_savebtn: false, show_esign: false,),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text(
                                  AppStrings.signatureOfReceiver,
                                  style: AppTextStyles.greenTextStyle,
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                                child: ClipRect(
                                  child: Signature(
                                    controller: _controller,
                                    backgroundColor: AppColors.lightGreyColor,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 15,),
                            ElevatedButton(
                              onPressed: () {
                                _controller.clear();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor, // Background color
                                foregroundColor: Color.fromARGB(255, 255, 255, 255), // Text color
                                textStyle: const TextStyle(
                                  fontSize: 20, // Font size
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Button size
                              ),
                              child: const Text(AppStrings.clearButtonText),
                            ),
                            SizedBox(
                              height: 100,
                            ),

                            
                  ],
                  )
                  ,)
                  )
                
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
                        fontSize: 18,
                        fontFamily: 'Arial',
                      ),),
                      Text('P 300',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Arial',
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  GestureDetector(
                    onTap: () async {
                        final signature = await _controller.toPngBytes();
                        if (signature != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Deliveryreceipt(eSignature: signature,)),
                          );

                        } else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Signature Required.")),
                          );
                        }
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
                        fontSize: 15,
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
      ),
    );
  }
}