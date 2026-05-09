import '../data/checkout_request.dart';
import '../data/checkout_response.dart';

abstract class CheckoutRepository {
  Future<CheckoutResponse> finalizar(CheckoutRequest request);
}
