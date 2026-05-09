import 'package:injectable/injectable.dart';

import '../../../config/auth/api_client.dart';
import '../domain/pedido_model.dart';

abstract class PedidoRepository {
  Future<List<PedidoModel>> buscarPedidosCliente(int clienteId);
  Future<List<PedidoModel>> pedidosRestaurante(int clienteId);
}

@LazySingleton(as: PedidoRepository)
class PedidoRepositoryImpl implements PedidoRepository {
  final ApiClient apiClient;

  PedidoRepositoryImpl(this.apiClient);

  @override
  Future<List<PedidoModel>> buscarPedidosCliente(int clienteId) async {
    final response = await apiClient.dio.get("/pedidos/cliente/$clienteId");

    return (response.data as List).map((e) => PedidoModel.fromJson(e)).toList();
  }

  Future<List<PedidoModel>> pedidosRestaurante(int restauranteId) async {
    final response = await apiClient.dio.get(
      "/pedidos/restaurante/$restauranteId",
    );

    return (response.data as List).map((e) => PedidoModel.fromJson(e)).toList();
  }
}
