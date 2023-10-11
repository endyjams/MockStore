import 'package:mock_store/data/models/product_model.dart';

abstract class ProductDataSource {
  Future<List<ProductModel>> getProducts();
}