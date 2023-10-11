import 'package:mock_store/core/config/api_config.dart';

enum APIEndpoints { getProducts }

class ApiEndpointsHelper {
  static String toRoute(APIEndpoints endpoint) {
    switch (endpoint) {
      case APIEndpoints.getProducts:
        return '${ApiConfig.baseUrl}/products';
      default:
        throw Exception('Endpoint not defined!');
    }
  }
}
