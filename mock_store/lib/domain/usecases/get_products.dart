import 'package:dartz/dartz.dart';
import 'package:mock_store/core/errors/failures.dart';
import 'package:mock_store/data/repositories/product_repository.dart';
import 'package:mock_store/domain/entities/product.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts({required this.repository});

  Future<Either<Failure, List<Product>>> call() {
    return repository.getProducts();
  }
}
