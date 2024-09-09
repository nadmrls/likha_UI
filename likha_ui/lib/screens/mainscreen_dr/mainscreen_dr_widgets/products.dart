import 'package:flutter/material.dart';
import 'package:likhaui/utils/values/constants.dart';

class ProductList extends StatelessWidget {

  final double screenHeight;
  final double screenWidth;

  ProductList({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final List<String> productImages = [
    'assets/images/jam.png',
    'assets/images/jam.png',
    'assets/images/jam.png',
    'assets/images/jam.png',
    'assets/images/jam.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Products', style: AppTextStyles.titleTextStyle),
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text('See All',
                    style: TextStyle(
                      color: AppColors.primaryColor
                    ),),
                    SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.primaryColor,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10), // Add some spacing between the title row and the products row
          SizedBox(
            height: 75, // Adjust the height of the container
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('Tapped on product $index');
                  },
                  child: Container(
                    width: 80,
                    margin: const EdgeInsets.only(right: 25.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            productImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text(
                        //     'Product $index', // Replace with actual product name if available
                        //     style: AppTextStyles.productName,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
