import 'package:injectable/injectable.dart';

import 'datasource/register_datasource.dart';
import 'models/register_request.dart';

@lazySingleton
class RegisterService {
  final RegisterDatasource datasource;

  RegisterService(this.datasource);

  Future<void> register(RegisterRequest request) {
    return datasource.register(request);
  }
}