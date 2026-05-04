import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'auth_local_data_source.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage storage;

  AuthLocalDataSourceImpl(this.storage);

  @override
  Future<void> saveToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  @override
  Future<String?> getToken() async {
    return storage.read(key: "token");
  }

  @override
  Future<void> clear() async {
    await storage.deleteAll();
  }
}