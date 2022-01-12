import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('gambar/logo.jpg',
        height: 100,
        width: 100,
      ),
    );
  }
}
