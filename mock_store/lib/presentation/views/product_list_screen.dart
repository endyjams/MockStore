import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_store/presentation/controllers/product_controller.dart';

class ProductListScreen extends GetView<ProductController> {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator(color: Colors.redAccent,));
        } else if (controller.errorMessage.value.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        } else {
          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              var product = controller.products[index];
              return ListTile(
                title: Text(product.title),
                subtitle: Text(product.description),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
