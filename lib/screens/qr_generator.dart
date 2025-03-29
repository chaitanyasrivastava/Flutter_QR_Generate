import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGeneratorScreen extends StatefulWidget {
  const QRGeneratorScreen({super.key});

  @override
  State<QRGeneratorScreen> createState() => _QRGeneratorScreenState();
}

class _QRGeneratorScreenState extends State<QRGeneratorScreen> {
  final TextEditingController _controller = TextEditingController();
  String qrData = "Hello, QR Code!";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: "Enter text",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                qrData = _controller.text;
              });
            },
            child: const Text("Generate QR Code"),
          ),
          const SizedBox(height: 20),
          QrImageView(
            data: qrData,
            size: 200,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
