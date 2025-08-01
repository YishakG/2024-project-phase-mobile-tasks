import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class InsertProductUsecase implements UseCase<Product, Product> {
  final ProductRepository repository;

  InsertProductUsecase(this.repository);

  @override
  Future<Either<Failure, Product>> call(Product product) async {
    return await repository.insertProduct(product);
  }
}
