import 'package:dio/dio.dart';
import 'package:foodflow/app/config/auth/api_client.dart';
import 'package:injectable/injectable.dart';

import 'auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<String> login(String userName, String senha) async {
    final response = await apiClient.dio.post(
      "/auth/login",
      data: {
        "username": userName,
        "password": senha,
      },
    );

    return response.data["token"];
  }
}