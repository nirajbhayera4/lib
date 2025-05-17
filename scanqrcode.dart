/*import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class scanqrcode extends StatefulWidget {
  const scanqrcode({super.key});

  @override
  State<scanqrcode> createState() => _scanqrcodeState();
}

class _scanqrcodeState extends State<scanqrcode> {
  String qrresult = "scanned data will appear here";
  Future<void> scanqr() async {
    try {
      final qrcode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "cancel", true, ScanMode.QR);
      if (!mounted) return;
      this.qrresult = qrresult.toString();
    } on PlatformException {
      qrresult = "failed to create qr code";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("qr code scanner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              '$qrresult',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: scanqr, child: Text("scan qr code"))
          ],
        ),
      ),
    );
  }
}
*/
