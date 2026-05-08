import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/register_request.dart';

@lazySingleton
class RegisterDatasource {
  final Dio dio;

  RegisterDatasource(this.dio);

  Future<void> register(RegisterRequest request) async {
    await dio.post(
      '/auth/register/cliente',
      data: request.toJson(),
    );
  }
}