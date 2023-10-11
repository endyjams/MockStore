import 'package:flutter/material.dart';

void main() {
  runApp(MockStore());
}

class MockStore extends StatelessWidget {
  const MockStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MockStore')),
      ),
    );
  }
}
