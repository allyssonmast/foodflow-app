import '../model/restaurante_model.dart';

abstract class RestauranteRepository {
  Future<List<RestauranteModel>> getRestaurantes();
}