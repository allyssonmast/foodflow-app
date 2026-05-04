// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../modules/auth/data/datasources/auth_remote_data_source.dart'
    as _i214;
import '../../modules/auth/data/datasources/auth_remote_data_source_impl.dart'
    as _i305;
import '../../modules/auth/data/repositories/auth_repository_impl.dart'
    as _i817;
import '../../modules/auth/domain/repositories/auth_repository.dart' as _i779;
import '../../modules/auth/presentation/bloc/auth_bloc.dart' as _i501;
import '../../modules/restaurante_details/data/restaurante_data_source_impl.dart'
    as _i62;
import '../../modules/restaurante_details/data/restaurante_repository_impl.dart'
    as _i690;
import '../../modules/restaurante_details/domain/repository/restaurante_data_source.dart'
    as _i818;
import '../../modules/restaurante_details/domain/repository/restaurante_repository.dart'
    as _i660;
import '../../modules/restaurante_details/presentation/bloc/restaurante_detalhe_bloc.dart'
    as _i414;
import '../../modules/restaurants/data/restaurante_remote_data_source.dart'
    as _i17;
import '../../modules/restaurants/data/restaurante_repository_impl.dart'
    as _i569;
import '../../modules/restaurants/domain/repository/restaurante_remote_data_source.dart'
    as _i465;
import '../../modules/restaurants/domain/repository/restaurante_repository.dart'
    as _i280;
import '../../modules/restaurants/presentation/bloc/restaurante_bloc.dart'
    as _i337;
import '../../modules/settings/domain/data/cliente_remote_data_source_impl.dart'
    as _i1040;
import '../../modules/settings/domain/data/cliente_repository_impl.dart'
    as _i678;
import '../../modules/settings/domain/repository/cliente_remote_data_source.dart'
    as _i635;
import '../../modules/settings/domain/repository/cliente_repository.dart'
    as _i856;
import '../../modules/settings/presentation/bloc/cliente_bloc.dart' as _i887;
import '../auth/api_client.dart' as _i446;
import '../storage/auth_local_data_source.dart' as _i665;
import '../storage/auth_local_data_source_impl.dart' as _i907;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => registerModule.storage);
    gh.lazySingleton<_i446.ApiClient>(() => _i446.ApiClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i635.ClienteRemoteDataSource>(
      () => _i1040.ClienteRemoteDataSourceImpl(gh<_i446.ApiClient>()),
    );
    gh.lazySingleton<_i214.AuthRemoteDataSource>(
      () => _i305.AuthRemoteDataSourceImpl(gh<_i446.ApiClient>()),
    );
    gh.lazySingleton<_i665.AuthLocalDataSource>(
      () => _i907.AuthLocalDataSourceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i779.AuthRepository>(
      () => _i817.AuthRepositoryImpl(
        gh<_i214.AuthRemoteDataSource>(),
        gh<_i665.AuthLocalDataSource>(),
      ),
    );
    gh.factory<_i501.AuthBloc>(
      () => _i501.AuthBloc(gh<_i779.AuthRepository>()),
    );
    gh.lazySingleton<_i856.ClienteRepository>(
      () => _i678.ClienteRepositoryImpl(gh<_i635.ClienteRemoteDataSource>()),
    );
    gh.factory<_i887.ClienteBloc>(
      () => _i887.ClienteBloc(gh<_i856.ClienteRepository>()),
    );
    gh.lazySingleton<_i465.RestauranteRemoteDataSource>(
      () => _i17.RestauranteRemoteDataSourceImpl(gh<_i446.ApiClient>()),
    );
    gh.lazySingleton<_i818.RestauranteDataSource>(
      () => _i62.RestauranteDataSourceImpl(gh<_i446.ApiClient>()),
    );
    gh.lazySingleton<_i660.RestauranteDetailRepository>(
      () => _i690.RestauranteRepositoryImpl(gh<_i818.RestauranteDataSource>()),
    );
    gh.factory<_i414.RestauranteDetalheBloc>(
      () =>
          _i414.RestauranteDetalheBloc(gh<_i660.RestauranteDetailRepository>()),
    );
    gh.lazySingleton<_i280.RestauranteRepository>(
      () => _i569.RestauranteRepositoryImpl(
        gh<_i465.RestauranteRemoteDataSource>(),
      ),
    );
    gh.factory<_i337.RestauranteBloc>(
      () => _i337.RestauranteBloc(gh<_i280.RestauranteRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
