import 'package:barcode/Scan.dart';
import 'package:barcode/read.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr code'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Scan()));
                },
                child: Text('scan')),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return Read();
                  })));
                },
                child: Text('create')),
          ],
        ),
      ),
    );
  }
}
