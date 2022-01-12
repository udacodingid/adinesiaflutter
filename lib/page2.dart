import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page 2'),
      ),

      body: Center(
        child: Image.asset('gambar/logo.jpg',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
