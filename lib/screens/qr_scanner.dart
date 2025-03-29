import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerScreen extends StatelessWidget {
  const QRScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MobileScanner(
        onDetect: (barcode) {
          final String? code = barcode.barcodes.first.rawValue;
          if (code != null) {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text("QR Code Scanned"),
                content: Text("Result: $code"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
