import 'package:get/get.dart';
import 'package:mock_store/domain/entities/product.dart';
import 'package:mock_store/domain/usecases/get_products.dart';

class ProductController extends GetxController {
  final GetProducts getProducts;

  ProductController({required this.getProducts});

  var products = <Product>[].obs;
  var isLoading = true.obs;
  var errorMessage = RxString('');


  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      isLoading.value = true;

      final result = await getProducts.call();

      result.fold(
            (failure) {
          errorMessage.value = failure.toString();
        },
            (productList) {
          products.value = productList;
        },
      );
    } catch (exception) {
      errorMessage.value = exception.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
