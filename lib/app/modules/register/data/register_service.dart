import 'package:injectable/injectable.dart';

import 'datasource/register_datasource.dart';
import 'models/register_request.dart';
import 'models/register_restaurant.dart';

@lazySingleton
class RegisterService {

  final RegisterDatasource datasource;

  RegisterService(this.datasource);

  Future<void> registerCliente(
      RegisterClienteRequest request,
      ) {

    return datasource.registerCliente(request);
  }

  Future<void> registerRestaurante(
      RegisterRestauranteRequest request,
      ) {

    return datasource.registerRestaurante(request);
  }
}