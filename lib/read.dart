import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

 String data = 'lets to scan';

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
 crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data),
            SizedBox(height: 30,),
            IconButton(
                onPressed: () {
                  FlutterBarcodeScanner.scanBarcode(
                          '#2A99CF', 'cancel', true, ScanMode.QR)
                      .then((value) {
                    setState(() {
                      data = value;
                    });
                  });
                },
                icon: Icon(Icons.camera))
          ],
        ),
      ),
    );
  }
}
