import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'qr_generator.dart';
import 'qr_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const QRGeneratorScreen(),
    const QRScannerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent, // Change app bar color
        title: const Text(
          "QR Code App",
          style: TextStyle(
            fontSize: 22, // Increase text size
            fontWeight: FontWeight.bold, // Make text bold
            color: Colors.white,
            // Set text color
          ),
        ),
        centerTitle: true, // Center the title
      ),


      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
