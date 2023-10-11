import 'package:dartz/dartz.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
