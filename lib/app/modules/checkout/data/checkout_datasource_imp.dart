import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'checkout_datasource.dart';
import 'checkout_request.dart';
import 'checkout_response.dart';

@LazySingleton(as: CheckoutDatasource)
class CheckoutDatasourceImpl implements CheckoutDatasource {
  final Dio dio;

  CheckoutDatasourceImpl(this.dio);

  @override
  Future<CheckoutResponse> finalizar(CheckoutRequest request) async {
    final response = await dio.post("/checkout", data: request.toJson());

    return CheckoutResponse.fromJson(response.data);
  }
}
