import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_store/core/bindings.dart';
import 'presentation/views/product_list_screen.dart';

void main() => runApp(const MockStore());

class MockStore extends StatelessWidget {
  const MockStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mock Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/products',
      getPages: [
        GetPage(name: '/products', page: () => ProductListScreen()),
      ],
      initialBinding: AppBindings(),
    );
  }
}
