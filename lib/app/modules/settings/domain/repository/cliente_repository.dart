import '../model/cliente_model.dart';

abstract class ClienteRepository {
  Future<ClienteModel> getMe();
  Future<ClienteModel> updateCliente(int id, ClienteModel cliente);
}