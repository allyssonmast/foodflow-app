import 'package:injectable/injectable.dart';
import 'package:foodflow/app/config/auth/api_client.dart';

import '../domain/model/restaurante_model.dart';
import '../domain/repository/restaurante_remote_data_source.dart';

@LazySingleton(as: RestauranteRemoteDataSource)
class RestauranteRemoteDataSourceImpl implements RestauranteRemoteDataSource {
  final ApiClient apiClient;

  RestauranteRemoteDataSourceImpl(this.apiClient);

  @override
  Future<List<RestauranteModel>> getRestaurantes() async {
    final response = await apiClient.dio.get("/restaurantes");

    final List data = response.data;

    return data
        .map((e) => RestauranteModel.fromJson(e))
        .where((r) => r.ativo)
        .toList();
  }
}