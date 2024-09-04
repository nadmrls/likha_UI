import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Colors.grey[300],

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.home_outlined,
            size: 30,),
            color: Colors.grey,
            ),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.settings_overscan_rounded,
              size: 30,),
            color: Colors.grey,),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.inventory_2_outlined,
              size: 30,),
            color: Colors.grey,),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.settings_outlined,
              size: 30,),
            color: Colors.grey,)
          ],
        ),
      )
    );
  }
}
