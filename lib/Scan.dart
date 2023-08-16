import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  TextEditingController data = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:80),
        child: Column(
          children: [
           
            QrImage(
              foregroundColor: Color.fromARGB(255, 7, 205, 255),
              data:data.text ,
              size: 200,
             // backgroundColor: Color.fromARGB(255, 167, 209, 243),
            ),
            TextFormField(
              controller: data,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                            
                        });
                      },
                      icon: Icon(Icons.done)),
                  hintText: 'enter text',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
