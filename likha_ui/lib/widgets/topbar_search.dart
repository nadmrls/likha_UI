import 'package:flutter/material.dart';

class TopbarSearch extends StatelessWidget {
  const TopbarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 8.0, bottom: 20), // Add some padding around the container
      child: Row(
        children: [
          Expanded(
            // Make the TextField take up available space
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.search_sharp,
                    size: 30,
                  )),
            ),
          ),
          const SizedBox(
              width: 8.0), // Add space between TextField and TextButton
          TextButton(
            onPressed: () {
              // Define button action here
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0), // Remove default padding
            ),
            child: Image.asset(
              'assets/images/search_icon.png',
              width: 40, // Set the desired width
              height: 40, // Set the desired height
            ),
          ),
        ],
      ),
    );
  }
}
