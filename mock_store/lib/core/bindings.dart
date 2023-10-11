import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mock_store/core/network/api_service.dart';
import 'package:mock_store/data/data_sources/product_data_source.dart';
import 'package:mock_store/data/data_sources/product_data_source_impl.dart';
import 'package:mock_store/data/repositories/product_repository.dart';
import 'package:mock_store/data/repositories/product_repository_impl.dart';
import 'package:mock_store/domain/usecases/get_products.dart';
import 'package:mock_store/presentation/controllers/product_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => dio);
    Get.lazyPut<ProductDataSource>(() => ProductDataSourceImpl(dio: Get.find<Dio>()));
    Get.lazyPut<ProductRepository>(() => ProductRepositoryImpl(dataSource: Get.find<ProductDataSource>()));
    Get.lazyPut(() => GetProducts(repository: Get.find<ProductRepository>()));
    Get.lazyPut(() => ProductController(getProducts: Get.find<GetProducts>()));
  }
}
