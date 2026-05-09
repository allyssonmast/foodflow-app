import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../dependence_injection/injection.dart';
import '../storage/auth_local_data_source.dart';

@LazySingleton()
class ApiClient {

  final Dio dio;

  ApiClient(this.dio) {

    dio.options.baseUrl = "http://192.168.0.15:8080";

    dio.interceptors.add(

      InterceptorsWrapper(

        onRequest: (options, handler) async {

          final token =
          await getIt<AuthLocalDataSource>()
              .getToken();

          if (token != null) {

            options.headers["Authorization"] =
            "Bearer $token";
          }

          print("================================");
          print("REQUEST");
          print("METHOD: ${options.method}");
          print("URL: ${options.uri}");
          print("HEADERS: ${options.headers}");
          print("BODY: ${options.data}");
          print("================================");

          return handler.next(options);
        },

        onResponse: (response, handler) {

          print("================================");
          print("RESPONSE");
          print("URL: ${response.requestOptions.uri}");
          print("STATUS: ${response.statusCode}");
          print("DATA: ${response.data}");
          print("================================");

          return handler.next(response);
        },

        onError: (DioException e, handler) {

          print("================================");
          print("ERROR");
          print("URL: ${e.requestOptions.uri}");
          print("STATUS: ${e.response?.statusCode}");
          print("MESSAGE: ${e.message}");
          print("RESPONSE: ${e.response?.data}");
          print("================================");

          return handler.next(e);
        },
      ),
    );
  }
}