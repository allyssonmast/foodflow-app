import 'package:injectable/injectable.dart';

import '../../../config/auth/api_client.dart';
import '../domain/model/produto_model.dart';
import '../domain/repository/restaurante_data_source.dart';

@LazySingleton(as: RestauranteDataSource)
class RestauranteDataSourceImpl implements RestauranteDataSource {
  final ApiClient apiClient;

  RestauranteDataSourceImpl(this.apiClient);

  @override
  Future<List<ProdutoModel>> getProdutos(int restauranteId) async {
    final response =
    await apiClient.dio.get("/restaurantes/$restauranteId/produtos");

    final List data = response.data;

    return data.map((e) => ProdutoModel.fromJson(e)).toList();
  }
}