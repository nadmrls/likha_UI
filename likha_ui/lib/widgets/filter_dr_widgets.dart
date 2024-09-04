import 'package:flutter/material.dart';
import '../utils/filter_dr_constants.dart';

class ButtonAndContainers extends StatefulWidget {
  const ButtonAndContainers({super.key});

  @override
  _ButtonAndContainersState createState() => _ButtonAndContainersState();
}

class _ButtonAndContainersState extends State<ButtonAndContainers> {
  int _selectedButtonIndex = 0;
  late List<Map<String, dynamic>> selectedTable = AppData.dataListDR;
  List<bool> _isIconToggledList = [];

  @override
  void initState() {
    super.initState();
    // Initialize the icon toggled list with false values
    _isIconToggledList = List<bool>.filled(selectedTable.length, false);
  }

  void _toggleIcon(int index) {
    setState(() {
      _isIconToggledList[index] = !_isIconToggledList[index];
    });
  }

  Widget _buildCustomButton(String text, int index) {
    return Flexible(
      fit: FlexFit.tight,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _selectedButtonIndex == index
              ? AppColors.primaryColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              _selectedButtonIndex = index;
              // Update selectedTable based on the button clicked
              switch (index) {
                case 0:
                  selectedTable = AppData.dataListDR;
                  break;
                case 1:
                  selectedTable = AppData.dataListDRtwo;
                  break;
                case 2:
                  selectedTable = AppData.dataListDRthree;
                  break;
                case 3:
                  selectedTable = AppData.dataListDRfour;
                  break;
                case 4:
                  selectedTable = AppData.dataListDRfive;
                  break;
                default:
                  selectedTable = AppData.dataListDR;
              }
              // Update the icon toggled list to match the new selected table
              _isIconToggledList =
              List<bool>.filled(selectedTable.length, false);
            });
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            backgroundColor: Colors.transparent,
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: AppTextStyle.titleTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          padding: const EdgeInsets.all(3),
          width: double.infinity,
          decoration: CustomDecorations.commonBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCustomButton('Packed', 0),
              _buildCustomButton('Validated', 1),
              _buildCustomButton('In Logistic', 2),
              _buildCustomButton('In Transit', 3),
              _buildCustomButton('Delivered', 4),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: List.generate(selectedTable.length, (index) {
            return GestureDetector(
              onTap: () {
                print(selectedTable[index]['drID']!);
                // Uncomment the below line to navigate to the ViewDR page
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
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedTable[index]['drID']!,
                            style: AppTextStyles.commonTextStyleOne,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedTable[index]['address']!,
                            style: AppTextStyles.commonTextStyleTwo,
                          ),
                          Text(
                            selectedTable[index]['number']!,
                            style: AppTextStyles.commonTextStyleTwo,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedTable[index]['date']!,
                            style: AppTextStyles.commonTextStyleThree,
                          ),
                          Text(
                            selectedTable[index]['time']!,
                            style: AppTextStyles.commonTextStyleThree,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        _isIconToggledList[index]
                            ? Icons.check_circle
                            : Icons.circle,
                        color: _isIconToggledList[index]
                            ? AppColors.primaryColor
                            : Colors.grey[350],
                      ),
                      onPressed: () => _toggleIcon(index),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
