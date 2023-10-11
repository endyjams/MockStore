import 'package:dio/dio.dart';
import 'package:mock_store/core/config/api_endpoints.dart';
import 'package:mock_store/core/errors/exceptions.dart';
import 'package:mock_store/data/models/product_model.dart';
import 'product_data_source.dart';

class ProductDataSourceImpl implements ProductDataSource {
  final Dio dio;

  ProductDataSourceImpl({required this.dio});

  @override
  Future<List<ProductModel>> getProducts() async {
    final response =
        await dio.get(ApiEndpointsHelper.toRoute(APIEndpoints.getProducts));

    if (response.statusCode == 200) {
      return (response.data as List)
          .map((product) => ProductModel.fromJson(product))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
