import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../restaurante_details/domain/model/produto_model.dart';
import 'model/produto_request.dart';

@lazySingleton
class ProdutoService {
  final Dio dio;

  ProdutoService(this.dio);

  Future<List<ProdutoModel>> meusProdutos() async {
    final response = await dio.get('/produtos/me');

    return (response.data as List)
        .map((e) => ProdutoModel.fromJson(e))
        .toList();
  }

  Future<void> criar(ProdutoRequest request) async {
    await dio.post('/produtos', data: request.toJson());
  }

  Future<void> atualizar(int id, ProdutoRequest request) async {
    await dio.put('/produtos/$id', data: request.toJson());
  }
}
