import 'package:foodflow/app/modules/restaurants/domain/model/restaurante_model.dart';
import 'package:injectable/injectable.dart';

import '../domain/model/produto_model.dart';
import '../domain/repository/restaurante_data_source.dart';
import '../domain/repository/restaurante_repository.dart';


@LazySingleton(as: RestauranteDetailRepository)
class RestauranteRepositoryImpl implements RestauranteDetailRepository {
  final RestauranteDataSource dataSource;

  RestauranteRepositoryImpl(this.dataSource);

  @override
  Future<List<ProdutoModel>> getProdutos(int restauranteId) {
    return dataSource.getProdutos(restauranteId);
  }

  @override
  Future<List<RestauranteModel>> getRestaurantes() {
    // TODO: implement getRestaurantes
    throw UnimplementedError();
  }
}