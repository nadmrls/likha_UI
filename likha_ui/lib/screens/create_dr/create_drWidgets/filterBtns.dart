import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/deliveryStatus.dart';
import 'package:likhaui/utils/values/constants.dart';

class ButtonAndContainers extends StatefulWidget {
  final bool showIcons;
  final bool showIconsTwo;


  const ButtonAndContainers({super.key, required this.showIcons, required this.showIconsTwo}); // Add this line

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

  // void _editItem(int index) {
  //   // Implement your edit logic here
  //   print("Edit icon pressed for item at index: $index");
  // }
  //
  // void _deleteItem(int index) {
  //   // Implement your delete logic here
  //   print("Delete icon pressed for item at index: $index");
  // }

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
              _isIconToggledList = List<bool>.filled(selectedTable.length, false);
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
              style: AppTextStyles.titleTextStyle,
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
        Column(
          children: List.generate(selectedTable.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeliverystatusCreateDR(dr_id: selectedTable[index]['drID']!, contact: selectedTable[index]['number']!,)),
                );
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
                    if (widget.showIcons)
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.grey,),
                              onPressed: (){
                                debugPrint('edit');
                              }
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            icon: const Icon(Icons.delete_forever, color: Colors.red),
                            onPressed: (){
                              debugPrint('delete');
                            }
                          ),
                        ],
                      ),
                    if (widget.showIconsTwo)
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

class MoveSelectedDR extends StatelessWidget {
  const MoveSelectedDR({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors.greyColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/package.png',
              width: 100,
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text('Selected:',
                style: TextStyle(
                  color: Colors.grey[500]
                ),),
                const Text('4 Dr Selected',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Move',
                  textAlign: TextAlign.center,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

