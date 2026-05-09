import 'package:injectable/injectable.dart';

import '../domain/checkout_repository.dart';
import 'checkout_datasource.dart';
import 'checkout_request.dart';
import 'checkout_response.dart';

@LazySingleton(as: CheckoutRepository)
class CheckoutRepositoryImpl implements CheckoutRepository {
  final CheckoutDatasource datasource;

  CheckoutRepositoryImpl(this.datasource);

  @override
  Future<CheckoutResponse> finalizar(CheckoutRequest request) {
    return datasource.finalizar(request);
  }
}
