import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String receivedText;

  SecondPage({required this.receivedText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الصفحة الثانية")),
      body: Center(
        child: Text(
          "النص المستلم: $receivedText",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
