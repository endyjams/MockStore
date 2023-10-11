import 'package:mock_store/core/errors/exceptions.dart';
import 'package:mock_store/core/errors/failures.dart';
import 'package:mock_store/data/data_sources/product_data_source.dart';
import 'package:mock_store/data/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mock_store/domain/entities/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDataSource dataSource;

  ProductRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final productModels = await dataSource.getProducts();
      return Right(productModels.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
