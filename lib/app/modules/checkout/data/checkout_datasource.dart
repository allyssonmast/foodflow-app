import 'checkout_request.dart';
import 'checkout_response.dart';

abstract class CheckoutDatasource {
  Future<CheckoutResponse> finalizar(CheckoutRequest request);
}
