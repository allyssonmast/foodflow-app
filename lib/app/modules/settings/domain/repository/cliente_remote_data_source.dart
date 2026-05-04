import '../model/cliente_model.dart';

abstract class ClienteRemoteDataSource {
  Future<ClienteModel> getMe();
  Future<ClienteModel> updateCliente(int id, ClienteModel cliente);
}