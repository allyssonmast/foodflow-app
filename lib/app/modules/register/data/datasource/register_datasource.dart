import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/register_request.dart';
import '../models/register_restaurant.dart';

@lazySingleton
class RegisterDatasource {
  final Dio dio;

  RegisterDatasource(this.dio);

  Future<void> registerCliente(RegisterClienteRequest request) async {
    await dio.post('/auth/register/cliente', data: request.toJson());
  }

  Future<void> registerRestaurante(RegisterRestauranteRequest request) async {
    await dio.post('/auth/register/restaurante', data: request.toJson());
  }
}
