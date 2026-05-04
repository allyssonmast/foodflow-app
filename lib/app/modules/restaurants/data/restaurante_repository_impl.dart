import 'package:injectable/injectable.dart';

import '../domain/model/restaurante_model.dart';
import '../domain/repository/restaurante_remote_data_source.dart';
import '../domain/repository/restaurante_repository.dart';


@LazySingleton(as: RestauranteRepository)
class RestauranteRepositoryImpl implements RestauranteRepository {
  final RestauranteRemoteDataSource remoteDataSource;

  RestauranteRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<RestauranteModel>> getRestaurantes() {
    return remoteDataSource.getRestaurantes();
  }
}