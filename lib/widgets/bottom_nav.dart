import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey, // Set background color for navbar
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20), // Rounded corners for better UI
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.white, // Selected item color
          unselectedItemColor: Colors.black, // Unselected item color
          backgroundColor: Colors.grey, // Navbar background color
          type: BottomNavigationBarType.fixed, // Ensures labels are visible

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: "Generate",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: "Scan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
          ],
        ),
      ),
    );
  }
}
