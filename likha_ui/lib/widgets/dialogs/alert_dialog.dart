import 'package:flutter/material.dart';

void showAlertMessage(BuildContext context, String message, {Icon? icon}) {
  // Create an overlay entry
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 50.0,
      left: MediaQuery.of(context).size.width * 0.1,
      right: MediaQuery.of(context).size.width * 0.1,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.green[300]!.withOpacity(0.7),  // Set the opacity here
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon ?? Image.asset(
                    'assets/images/logomark.png',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Icon(Icons.check_circle_outline, color: Colors.white)
            ],
          ),
        ),
      ),
    ),
  );

  // Insert the overlay into the overlay stack
  Overlay.of(context).insert(overlayEntry);

  // Remove the overlay after a few seconds
  Future.delayed(const Duration(seconds: 3), () {
    overlayEntry.remove();
  });
}
