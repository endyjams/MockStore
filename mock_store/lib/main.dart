import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MockStore());

class MockStore extends StatelessWidget {
  const MockStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mock Store',
    );
  }
}
