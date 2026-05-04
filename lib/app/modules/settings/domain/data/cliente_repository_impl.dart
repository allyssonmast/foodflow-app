import 'package:injectable/injectable.dart';

import '../model/cliente_model.dart';
import '../repository/cliente_remote_data_source.dart';
import '../repository/cliente_repository.dart';

@LazySingleton(as: ClienteRepository)
class ClienteRepositoryImpl implements ClienteRepository {
  final ClienteRemoteDataSource remoteDataSource;

  ClienteRepositoryImpl(this.remoteDataSource);

  @override
  Future<ClienteModel> getMe() {
    return remoteDataSource.getMe();
  }

  @override
  Future<ClienteModel> updateCliente(int id, ClienteModel cliente) {
    return remoteDataSource.updateCliente(id, cliente);
  }
}