// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const DR_list());


class DR_list extends StatefulWidget {
  const DR_list({super.key});

  @override
  State<DR_list> createState() => _DRListState();
}

class _DRListState extends State<DR_list> {
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
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // Add your onPressed functionality here
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[300]
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        size: 20,), // Replace with your desired icon
                        Text('Back',
                        style: TextStyle(color: Colors.black,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                        ), // Replace with your desired text
                      ],
                    ),
                  ),
                    const Expanded(
                        child: Center(
                          child: Text(
                            'DR List',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ))
                ],
              ),

              SizedBox(height: screenHeight * 0.04),
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.83, // Set a fixed height for the scrollable container
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(10, (index) {
                      return Container(
                        width: screenWidth * 0.9, // Set width as a percentage of screen width
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QEJ7J8F0KH3$index',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Delivery Status: Repack 20 ML Quezon St. City Subdivision, \nSan Pablo City, Laguna \n09xxxxxxxxx$index',
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '07-2$index-24 \n7:00pm',
                              style: const TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
