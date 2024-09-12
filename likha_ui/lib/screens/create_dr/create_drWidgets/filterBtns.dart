import 'package:flutter/material.dart';
import 'package:likhaui/screens/create_dr/deliveryStatus.dart';
import 'package:likhaui/utils/shared/provider/barcode_provider.dart';
import 'package:likhaui/utils/shared/provider/dr_listfilterProvider.dart';
import 'package:likhaui/utils/values/constants.dart';
import 'package:provider/provider.dart';

class ButtonAndContainers extends StatefulWidget {
  final bool showIcons;
  final bool showIconsTwo;

  const ButtonAndContainers({
    super.key,
    required this.showIcons,
    required this.showIconsTwo,
  });

  @override
  _ButtonAndContainersState createState() => _ButtonAndContainersState();
}

class _ButtonAndContainersState extends State<ButtonAndContainers> {
  int _selectedButtonIndex = 0;
  List<bool> _isIconToggledList = [];

  @override
  void initState() {
    super.initState();
    final selectedTableProvider =
        Provider.of<DrListfilterprovider>(context, listen: false);
    _isIconToggledList =
        List<bool>.filled(selectedTableProvider.selectedTable.length, false);
  }

  void _toggleIcon(int index) {
    setState(() {
      _isIconToggledList[index] = !_isIconToggledList[index];
    });
  }

  Widget _buildCustomButton(String text, int index) {
    final textProvider = Provider.of<DrListfilterprovider>(context);
    final selectedTableProvider = Provider.of<DrListfilterprovider>(context);

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
              textProvider.toggleVisibilityTrue();
              selectedTableProvider.updateSelectedTable(index);
              _isIconToggledList = List<bool>.filled(
                  selectedTableProvider.selectedTable.length, false);

              // Update the text based on the button clicked
              switch (index) {
                case 0:
                  textProvider.changeText('Move all as Validated');
                  break;
                case 1:
                  textProvider.changeText('Move all In Logistics');
                  break;
                case 2:
                  textProvider.changeText('Move all In Transit');
                  break;
                case 3:
                  textProvider.changeText('Move all to Delivered');
                  break;
                case 4:
                  textProvider.toggleVisibilityFalse();
                  break;
              }
            });
          },
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
    final barcode = Provider.of<BarcodeProvider>(context);
    final selectedTableProvider = Provider.of<DrListfilterprovider>(context);

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
          children: List.generate(selectedTableProvider.selectedTable.length,
              (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  barcode.changeBarcode(
                      selectedTableProvider.selectedTable[index]['drID']!);
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliverystatusCreateDR(
                      dr_id: selectedTableProvider.selectedTable[index]
                          ['drID']!,
                      contact: selectedTableProvider.selectedTable[index]
                          ['number']!,
                    ),
                  ),
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
                            selectedTableProvider.selectedTable[index]['drID']!,
                            style: AppTextStyles.commonTextStyleOne,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedTableProvider.selectedTable[index]
                                ['address']!,
                            style: AppTextStyles.commonTextStyleTwo,
                          ),
                          Text(
                            selectedTableProvider.selectedTable[index]
                                ['number']!,
                            style: AppTextStyles.commonTextStyleTwo,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            selectedTableProvider.selectedTable[index]['date']!,
                            style: AppTextStyles.commonTextStyleThree,
                          ),
                          Text(
                            selectedTableProvider.selectedTable[index]['time']!,
                            style: AppTextStyles.commonTextStyleThree,
                          ),
                        ],
                      ),
                    ),
                    if (widget.showIcons)
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.grey),
                            onPressed: () => debugPrint('edit'),
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            icon: const Icon(Icons.delete_forever,
                                color: Colors.red),
                            onPressed: () => debugPrint('delete'),
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
