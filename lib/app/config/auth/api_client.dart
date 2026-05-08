import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../dependence_injection/injection.dart';
import '../storage/auth_local_data_source.dart';

@LazySingleton()
class ApiClient {
  final Dio dio;

  ApiClient(this.dio) {
    dio.options.baseUrl = "http://192.168.0.9:8080";

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await getIt<AuthLocalDataSource>().getToken();

        if (token != null) {
          options.headers["Authorization"] = "Bearer $token";
        }

        return handler.next(options);
      },
    ));
  }
}