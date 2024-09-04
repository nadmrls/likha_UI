import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 2;


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(
        ),
        notchMargin: 20.0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_outlined, color: _selectedIndex == 0 ? const Color(0xFF5CA47A) : Colors.grey),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.check_box_outlined, color: _selectedIndex == 1 ? const Color(0xFF5CA47A) : Colors.grey),
                onPressed: () => _onItemTapped(1),
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.inventory_2_outlined , color: _selectedIndex == 3 ? const Color(0xFF5CA47A) : Colors.grey),
                onPressed: () => _onItemTapped(3),
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined, color: _selectedIndex == 4 ? const Color(0xFF5CA47A) : Colors.grey),
                onPressed: (
                    ) => _onItemTapped(4),
              ),
            ],
          ),
        ),
      );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
    });
  }
}
