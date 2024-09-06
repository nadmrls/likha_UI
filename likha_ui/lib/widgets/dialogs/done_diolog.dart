import 'package:flutter/material.dart';

void showMyDialog(BuildContext context, String message) {
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
                // Dialog Content
                Positioned(
                  top: 45,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  child: Expanded(
                    child: Text(
                      message, // Use the passed message here
                      style: const TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center, // Center align the text
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Transform.scale(
                    scale: 0.955, // Adjust this value to zoom in or out
                    child: Image.asset('assets/images/shine bg.png',),
                  ),
                ),
                Positioned(
                  top: 50,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Transform.scale(
                    scale: 1.3, // Adjust this value to zoom in or out
                    child: Image.asset('assets/images/delivery-man-phone.png'),
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
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(1), // Glow color
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(0, 0), // Changes position of shadow
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[300], // Button background color
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
                            'DONE',
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
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
