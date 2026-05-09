import 'package:injectable/injectable.dart';

import '../data/checkout_request.dart';
import '../data/checkout_response.dart';
import 'checkout_repository.dart';

@injectable
class FinalizarCheckoutUsecase {
  final CheckoutRepository repository;

  FinalizarCheckoutUsecase(this.repository);

  Future<CheckoutResponse> call(CheckoutRequest request) {
    return repository.finalizar(request);
  }
}
