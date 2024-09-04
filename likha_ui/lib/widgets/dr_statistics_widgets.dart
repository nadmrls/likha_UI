import 'package:flutter/material.dart';
import 'package:sample_ui/utils/dr_statistics_constants.dart';
import 'graph_widget.dart';


class SearchLogoWidget extends StatelessWidget {
  const SearchLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0 ,bottom: 20), // Add some padding around the container
      child: Row(
        children: [
          Expanded(
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
          const SizedBox(width: 30.0),
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

class DrCategory extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DrCategory({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: screenWidth * 0.0452, right: screenWidth * 0.0452),
      padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 25, right: 25),
      decoration: CustomDecorations.commonBoxDecoration,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResultAllDR(title: AppString.statisticTextTwo, value: AppString.statisticValueTwo,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppString.statisticTextOne, value: AppString.statisticValueOne,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppString.statisticTextThree, value: AppString.statisticValueThree,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppString.statisticTextFour, value: AppString.statisticValueFour,),
          SizedBox(width: 5,),
          ResultAllDR(title: AppString.statisticTextFive, value: AppString.statisticValueFive,),


        ],
      ),
    );
  }
}

class ResultAllDR extends StatelessWidget {
  final String title;
  final String value;

  const ResultAllDR({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.contain, // or BoxFit.fill, BoxFit.cover, etc.
              child: Text(
                title,
                style: AppTextStyles.titleTextStyle,
              ),
            ),
            const SizedBox(height: 5),
            FittedBox(
              fit: BoxFit.contain, // or BoxFit.fill, BoxFit.cover, etc.
              child: Text(
                value,
                style: AppTextStyles.commonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class GraphWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const GraphWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecorations.commonBoxDecoration,
      width: screenWidth * 0.44,
      height: screenHeight * 0.3,
      child: Padding( // Added padding for a better layout
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Column(
              children: [
                Text('300', style: AppTextStyles.commonTextStyle),
                Text('Statistics', style: AppTextStyles.titleTextStyle),
              ],
        ),
            ),
             Expanded(child: MonthlySalesScreen()),
          ],
        ),
      ),
    );
  }
}

class GraphTotal extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const GraphTotal({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: CustomDecorations.commonBoxDecoration,
              width: screenWidth * 0.5,
              height: screenHeight * 0.142,
              child: Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text( AppString.ProductcreatedTitle,
                      style: AppTextStyles.titleTextStyle,
                    ),
                    Text( AppString.ProductcreatedValue,
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: screenHeight * 0.04,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold
                        ),
                    )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: CustomDecorations.commonBoxDecoration,
              width: screenWidth * 0.5,
              height: screenHeight * 0.142,
            child: Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(AppString.PackagecreatedTitle,
                        style: AppTextStyles.titleTextStyle,),
                    
                    Text(AppString.PackagecreatedValue,
                        style:TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: screenHeight * 0.04,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold
                
                      ),
                    )
                  ],
                ),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}




class ImageWithButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const ImageWithButton({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: screenWidth * 0.0452,
        right: screenWidth * 0.0452,
      ),
      decoration: CustomDecorations.decorationWithImage,
      height: screenHeight * 0.25,
      width: screenWidth * 1,
      child: Stack(
        children: [


          Positioned(
            top: 100,
            left: screenWidth * 0.05,
            child: Image.asset(
              'assets/images/wordmark.png', // Replace with your image path
              height: 80,
              width: 80,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                print('Button pressed');
              },
              child: Container(
                width: 250,
                height: 100,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 147,
                        top: 1,
                        child: Image.asset(
                          'assets/images/logomark.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          AppString.btnImageTextone,
                          style: AppTextStyles.btnStartDelivery,
                        ),
                      ),
                      const Positioned(
                        top: 50,
                        left: 20,
                        child: Text(
                          AppString.btnImageTexttwo,
                          style: AppTextStyles.btnStartDeliveryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

