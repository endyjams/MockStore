import 'package:dartz/dartz.dart';
import 'package:mock_store/core/errors/failures.dart';
import 'package:mock_store/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
