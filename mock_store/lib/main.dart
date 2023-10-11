import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MockStore());

class MockStore extends StatelessWidget {
  const MockStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Mock Store',
    );
  }
}
