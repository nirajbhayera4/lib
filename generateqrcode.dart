/*import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generateqrcode extends StatefulWidget {
  const Generateqrcode({super.key});

  @override
  State<Generateqrcode> createState() => _GenerateqrcodeState();
}

class _GenerateqrcodeState extends State<Generateqrcode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("generate qr code"),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (urlController.text.isNotEmpty)
              qrImage(
                data: urlController.text,
                size: 200,
              ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                      hintText: "enter your data",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'enter your data'),
                )),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(onPressed: () {}, child: Text("generate qr code ")),
          ],
        ))));
  }

  qrImage({required String data, required int size}) {}
}
*/
