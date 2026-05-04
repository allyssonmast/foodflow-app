import 'package:injectable/injectable.dart';

import '../../../../config/storage/auth_local_data_source.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;
  final AuthLocalDataSource local;

  AuthRepositoryImpl(this.remote, this.local);

  @override
  Future<void> login(String userName, String senha) async {
    final token = await remote.login(userName, senha);
    await local.saveToken(token);
  }

  @override
  Future<void> logout() async {
    await local.clear();
  }

  @override
  Future<bool> isLogged() async {
    final token = await local.getToken();
    return token != null;
  }
}