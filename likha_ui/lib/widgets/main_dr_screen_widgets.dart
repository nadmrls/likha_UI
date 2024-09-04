import 'package:flutter/material.dart';
import 'package:sample_ui/utils/main_dr_screen_constants.dart';

class SearchLogoWidget extends StatelessWidget {
  const SearchLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0 ,bottom: 20), // Add some padding around the container
      child: Row(
        children: [
          Expanded( // Make the TextField take up available space
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: const Icon(Icons.search_sharp,
                  size: 30 ,
                )
              ),
            ),
          ),
          const SizedBox(width: 8.0), // Add space between TextField and TextButton
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


class DRList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DRList({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(AppData.dataListDR.length, (index) {
            return GestureDetector(
              onTap: () {
                // print(AppData.dataListDR[index]['drID']!);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ViewDR()),
                // );
              },
              child: Container(
                width: screenWidth * 0.9,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppData.dataListDR[index]['drID']!,
                      style: AppTextStyles.commonTextStyleOne,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppData.dataListDR[index]['address']!,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    Text(
                      AppData.dataListDR[index]['number']!,
                      style: AppTextStyles.commonTextStyleTwo,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppData.dataListDR[index]['date']!,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                    Text(
                      AppData.dataListDR[index]['time']!,
                      style: AppTextStyles.commonTextStyleThree,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
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
      padding: const EdgeInsets.all(20.0),
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
                    Text('See All', style: AppTextStyles.seeAllButton),
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
