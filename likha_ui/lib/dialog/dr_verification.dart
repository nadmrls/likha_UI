import 'package:flutter/material.dart';
import 'package:sample_ui/utils/completed_dr_constants.dart';

void showCreateDRVerify(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
          width: 350, // Set your desired width
          height: 300, // Set your desired height
          child: ClipRect(
            child: Stack(
              children: <Widget>[
                // Background Image
                Positioned.fill(
                  child: Transform.scale(
                    scale: 1.8, // Adjust this value to zoom in or out
                    child: Opacity(
                      opacity: 0.05,
                      child: Image.asset(
                        'assets/images/damo-transparent1.png', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 45,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 80,
                  child: SizedBox(
                    width: 350,
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/dr_note.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Image.asset(
                            'assets/images/dr_note.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Image.asset(
                            'assets/images/dr_note.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Image.asset(
                            'assets/images/dr_note.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Positioned(
                  left: 30,
                  right: 30,
                  bottom: 30,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // Button background color
                                foregroundColor: AppColors.primaryColor, // Button text color
                                textStyle: const TextStyle(
                                  fontSize: 20, // Button text font size
                                  fontWeight: FontWeight.bold,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Button padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(color: AppColors.primaryColor, width: 2), // Button border radius
                                ),
                              ),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            const SizedBox(width: 20,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,// Button background color
                                foregroundColor: Colors.white, // Button text color
                                textStyle: const TextStyle(
                                  fontSize: 20, // Button text font size
                                  fontWeight: FontWeight.bold,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Button padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15), // Button border radius
                                ),
                              ),
                              child: const Text(
                                'Yes',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
