import '../model/restaurante_model.dart';

abstract class RestauranteRemoteDataSource {
  Future<List<RestauranteModel>> getRestaurantes();
}