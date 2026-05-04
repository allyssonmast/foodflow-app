import 'package:injectable/injectable.dart';
import 'package:foodflow/app/config/auth/api_client.dart';

import '../model/cliente_model.dart';
import '../repository/cliente_remote_data_source.dart';

@LazySingleton(as: ClienteRemoteDataSource)
class ClienteRemoteDataSourceImpl implements ClienteRemoteDataSource {
  final ApiClient apiClient;

  ClienteRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ClienteModel> getMe() async {
    final response = await apiClient.dio.get("/clientes/me");

    return ClienteModel.fromJson(response.data);
  }

  @override
  Future<ClienteModel> updateCliente(
      int id,
      ClienteModel cliente,
      ) async {
    final response = await apiClient.dio.put(
      "/clientes/me",
      data: cliente.toJson(),
    );

    return ClienteModel.fromJson(response.data);
  }
}